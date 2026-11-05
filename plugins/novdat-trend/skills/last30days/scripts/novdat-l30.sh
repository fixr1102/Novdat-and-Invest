#!/usr/bin/env bash
# NOVDAT wrapper for the vendored last30days engine.
#
# Every research run MUST go through this script, never through
# engine/scripts/last30days.py directly. It enforces NOVDAT's locks:
#   - sources limited to Reddit, YouTube (yt-dlp, public data) and web grounding
#   - no browser cookies (the cookie modules are also deleted from the engine)
#   - no ScrapeCreators / TikTok / Instagram / Pinterest (key is scrubbed from env)
#   - no Polymarket, GitHub, hiring signals, discovery/trending sweeps
#   - no ht-ml.app publishing (module deleted, flags rejected); files stay local
#   - its own config dir, so a personal ~/.config/last30days/.env is never read
set -euo pipefail

HERE="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
SKILL_ROOT="$(dirname -- "$HERE")"
ENGINE="$SKILL_ROOT/engine/scripts/last30days.py"
ALLOWED_SOURCES="reddit youtube grounding"
DEFAULT_SEARCH="reddit,youtube,grounding"

die() { printf '[novdat-l30] BLOCKED: %s\n' "$*" >&2; exit 2; }

[ -f "$ENGINE" ] || { echo "[novdat-l30] ERROR: engine not found at $ENGINE" >&2; exit 1; }

# --- Python 3.12+ -----------------------------------------------------------
PY="${LAST30DAYS_PYTHON:-}"
ok_py() { [ -n "$1" ] && command -v "$1" >/dev/null 2>&1 && "$1" -c 'import sys; raise SystemExit(0 if sys.version_info >= (3, 12) else 1)' 2>/dev/null; }
if ! ok_py "$PY"; then
  PY=""
  for c in python3.14 python3.13 python3.12 python3 python py; do
    if ok_py "$c"; then PY="$(command -v "$c")"; break; fi
  done
fi
if [ -z "$PY" ] && command -v uv >/dev/null 2>&1; then
  c="$(uv python find '>=3.12' 2>/dev/null || true)"
  ok_py "$c" && PY="$c"
fi
[ -n "$PY" ] || { echo "[novdat-l30] ERROR: can co Python 3.12+ (Mac: brew install python@3.12 | Windows: winget install Python.Python.3.12)" >&2; exit 1; }

# --- Argument filter --------------------------------------------------------
SEARCH="$DEFAULT_SEARCH"
READ_PLAN=0
ARGS=()
for a in "$@"; do
  case "$a" in
    --publish|--publish=*|--publish-html|--publish-html=*|--publish-password|--publish-password=*)
      die "dang cong khai (ht-ml.app) bi cam. Chi luu file local." ;;
    --allow-browser-cookies*|--from-browser*|--browser*)
      die "doc cookie trinh duyet bi cam." ;;
    --hiring-signals*|--discover*|--trending*|--nominate-only|--judgments*|--finalize|--angles*)
      die "hiring signals / discovery / trending nam ngoai pham vi NOVDAT." ;;
    --x-*|--github-*|--tiktok-*|--ig-*|--meta-ads*|--trustpilot*|--amazon*|--devto-*|--telegram*)
      die "nguon $a khong duoc bat cho NOVDAT." ;;
    --search=*)
      SEARCH="${a#--search=}"
      for s in ${SEARCH//,/ }; do
        case " $ALLOWED_SOURCES " in *" $s "*) ;; *) die "nguon '$s' khong nam trong danh sach cho phep ($ALLOWED_SOURCES)." ;; esac
      done
      continue ;;
    --search)
      die "dung dang --search=reddit,youtube (co dau =)." ;;
    --plan=*)
      die "dung '--plan -' (hai tham so rieng) va truyen JSON qua stdin." ;;
  esac
  ARGS+=("$a")
done

# Detect '--plan -' and validate the plan's sources before the engine sees it.
for ((i = 0; i < ${#ARGS[@]}; i++)); do
  if [ "${ARGS[$i]}" = "--plan" ]; then
    [ "${ARGS[$((i + 1))]:-}" = "-" ] || die "--plan chi nhan '-' (JSON qua stdin)."
    READ_PLAN=1
  fi
done

PLAN_JSON=""
if [ "$READ_PLAN" = 1 ]; then
  PLAN_JSON="$(cat)"
  printf '%s' "$PLAN_JSON" | "$PY" -I "$HERE/check_plan.py" "$SEARCH" || exit 2
fi

# --- Locked config ----------------------------------------------------------
CFG_DIR="${NOVDAT_L30_CONFIG_DIR:-$HOME/.config/novdat-last30days}"
OUT_DIR="${NOVDAT_L30_OUT_DIR:-$HOME/Documents/NOVDAT/last30days}"
mkdir -p "$CFG_DIR"
umask 077
cat > "$CFG_DIR/.env" <<EOF
# Written by novdat-l30.sh on every run. Do not edit: changes are overwritten.
SETUP_COMPLETE=true
LAST30DAYS_MEMORY_DIR=$OUT_DIR
LAST30DAYS_DEFAULT_SEARCH=$DEFAULT_SEARCH
FROM_BROWSER=off
INCLUDE_SOURCES=
EXCLUDE_SOURCES=youtube_comments,tiktok_comments,instagram_comments,polymarket,github,jobs
LAST30DAYS_YT_SC_MIN_ITEMS=0
LAST30DAYS_REDDIT_SC_MIN_ITEMS=0
EOF
chmod 600 "$CFG_DIR/.env"
export LAST30DAYS_CONFIG_DIR="$CFG_DIR"

# Scrub every credential that would open a forbidden or paid lane.
for v in SCRAPECREATORS_API_KEY APIFY_API_TOKEN AUTH_TOKEN CT0 FROM_BROWSER \
         XAI_API_KEY X_BEARER_TOKEN XQUIK_API_KEY OPENAI_API_KEY OPENROUTER_API_KEY \
         PERPLEXITY_API_KEY PARALLEL_API_KEY BRAVE_API_KEY SERPER_API_KEY EXA_API_KEY \
         GOOGLE_API_KEY GEMINI_API_KEY BSKY_HANDLE BSKY_APP_PASSWORD TRUTHSOCIAL_TOKEN \
         XIAOHONGSHU_API_BASE BRIGHTDATA_API_KEY GITHUB_TOKEN GH_TOKEN \
         LAST30DAYS_API_KEY LAST30DAYS_API_BASE LAST30DAYS_CORPUS_DIRS INCLUDE_SOURCES; do
  unset "$v" 2>/dev/null || true
done

command -v yt-dlp >/dev/null 2>&1 || echo "[novdat-l30] NOTE: chua co yt-dlp, YouTube se bi bo qua (pip install yt-dlp)." >&2

if [ "$READ_PLAN" = 1 ]; then
  printf '%s' "$PLAN_JSON" | "$PY" "$ENGINE" "${ARGS[@]}" --search="$SEARCH" --no-browser-cookies --research-only
else
  "$PY" "$ENGINE" "${ARGS[@]}" --search="$SEARCH" --no-browser-cookies --research-only
fi

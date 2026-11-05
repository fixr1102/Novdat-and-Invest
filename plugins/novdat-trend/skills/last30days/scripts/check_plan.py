"""Validate a last30days query plan against NOVDAT's allowed sources.

Usage: printf '%s' "$PLAN_JSON" | python -I check_plan.py reddit,youtube,grounding
Exit 0 when every subquery uses only allowed sources, 2 otherwise.
"""

import json
import sys


def main() -> int:
    allowed = {s.strip() for s in (sys.argv[1] if len(sys.argv) > 1 else "").split(",") if s.strip()}
    try:
        plan = json.loads(sys.stdin.read())
    except json.JSONDecodeError as exc:
        print(f"[novdat-l30] BLOCKED: plan JSON khong hop le: {exc}", file=sys.stderr)
        return 2
    subqueries = plan.get("subqueries") if isinstance(plan, dict) else None
    if not isinstance(subqueries, list) or not subqueries:
        print("[novdat-l30] BLOCKED: plan thieu 'subqueries'.", file=sys.stderr)
        return 2
    bad = []
    for i, sq in enumerate(subqueries):
        for src in (sq.get("sources") or []) if isinstance(sq, dict) else []:
            if src not in allowed:
                bad.append(f"subqueries[{i}]: {src}")
    weights = plan.get("source_weights") or {}
    if isinstance(weights, dict):
        bad += [f"source_weights: {s}" for s in weights if s not in allowed]
    if bad:
        print(
            "[novdat-l30] BLOCKED: plan dung nguon ngoai danh sach cho phep "
            f"({', '.join(sorted(allowed))}): " + "; ".join(bad),
            file=sys.stderr,
        )
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

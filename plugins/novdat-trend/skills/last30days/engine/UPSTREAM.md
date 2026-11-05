# Engine upstream

- Nguồn: https://github.com/mvanhorn/last30days-skill
- Commit ghim: `e9c31b868ab9d284c1a988e528c3391c51ebf944` (2026-11-03), phiên bản 3.31.0
- Giấy phép: MIT (xem `LICENSE`, giữ nguyên)
- Chỉ lấy thư mục `skills/last30days/scripts/`. Không lấy SKILL.md và `references/` gốc; quy trình NOVDAT nằm trong `../SKILL.md`.

## Đã xoá khỏi bản upstream

| File | Lý do |
|---|---|
| `lib/chrome_cookies.py`, `lib/safari_cookies.py`, `lib/cookie_extract.py`, `lib/cookie_paths.py`, `lib/agentcookie.py`, `lib/chrome_cdp.py`, `box_chrome_login.py` | Đọc cookie trình duyệt hoặc phiên Chrome |
| `lib/vendor/bird-search/` | Client X chạy bằng cookie |
| `lib/html_publish.py` | Đăng lên ht-ml.app |
| `setup-keychain.sh`, `setup-pass.sh` | Lưu key vào keychain/pass (không dùng key) |
| `test_device_auth.py`, `test-v1-vs-v2.sh`, `verify_v3.py`, `evaluate_search_quality.py`, `x_lane_parity.py`, `compare.sh`, `build-skill.sh` | Công cụ phát triển |

Code các nguồn khác (TikTok, Polymarket, GitHub...) vẫn còn vì engine import chúng, nhưng `scripts/novdat-l30.sh` khoá danh sách nguồn chỉ còn `reddit,youtube,grounding` và xoá mọi key khỏi môi trường.

## Cập nhật engine

1. Clone upstream ở commit mới, đọc CHANGELOG và phần Security & Permissions trong SKILL.md gốc.
2. Chép lại `skills/last30days/scripts/` vào `engine/scripts/`, xoá lại đúng các file trong bảng trên.
3. Chạy `../scripts/novdat-l30.sh --diagnose` và một lần `--mock`, rồi cập nhật commit ghim ở đây.

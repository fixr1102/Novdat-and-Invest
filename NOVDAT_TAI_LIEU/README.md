# NOVDAT — Tài liệu phiên làm việc với Claude (từ 03/11/2026)

Mọi file Claude tạo cho anh đều nằm trong thư mục này. **Đọc file này trước** để tìm nhanh.

- **Xem trên GitHub:** https://github.com/fixr1102/Novdat-and-Invest/tree/claude/eager-sagan-t943vz/NOVDAT_TAI_LIEU
- **Tải cả thư mục:**
  - Claude gửi file `.zip` trong chat mỗi khi anh cần.
  - Hoặc trên GitHub: nút **Code → Download ZIP** (tải cả repo, thư mục này nằm bên trong).
- **Tìm nhanh:** trên GitHub bấm phím `t` rồi gõ tên file. Hoặc gõ chữ vào ô Search của repo.

## Cách xếp

| Thư mục | Chứa gì |
|---|---|
| `0-NHAT_KY_PHIEN.md` | **Nhật ký phiên**: mỗi lần Claude báo cáo, ghi Đã làm / Đã ghi ra ngoài / Chờ anh quyết. Bảng "Quyết định đang chờ anh" ở đầu file |
| `1-bao-cao/` | Báo cáo và dữ liệu: audit, Trend Radar, Pinterest, báo cáo định kỳ m1 |
| `2-huong-dan-cho-anh/` | Hướng dẫn anh tự làm: Meta, Klaviyo, prompt Claude in Chrome |
| `3-creative/` | Ảnh, video, hook: phiếu, bản mô tả video, kho phong cách David & Hanna, Hook Lab |
| `4-doi-agent/` | Đội agent NOVDAT: vai, lịch, quy trình |

## Mục lục

| File | Nội dung | Trạng thái |
|---|---|---|
| [0-NHAT_KY_PHIEN.md](0-NHAT_KY_PHIEN.md) | Nhật ký phiên + quyết định chờ anh | Cập nhật liên tục |
| **1-bao-cao/** | | |
| [Audit tâm lý giỏ hàng + PDP](1-bao-cao/NOVDAT_AUDIT_TAMLY_CART_PDP_2026-11-05.md) | Rà PDP và giỏ hàng, chỉ đọc; checklist 10 bước | Xong 05/11 |
| [Trend Radar 3 ngách](1-bao-cao/trend-radar/2026-11-05-trend-radar-3-ngach.md) | Số tương tác Reddit 30 ngày: chạy bộ, pickleball, Noel | Xong 05/11 |
| [Pinterest 18–34](1-bao-cao/trend-radar/2026-11-05-pinterest-18-34.md) | Phân tích 8 file CSV Pinterest Trends | Xong 05/11 |
| [Dữ liệu Pinterest](1-bao-cao/trend-radar/pinterest-2026-11-02/) | 8 file CSV gốc anh xuất | Dữ liệu |
| [Dữ liệu gốc engine](1-bao-cao/trend-radar/raw/) | Kết quả thô Reddit, chỉ dùng nội bộ | Dữ liệu |
| [Ảnh nút Buy Now sau khi sửa (DEV)](1-bao-cao/dev-theme-buy-now-0511/) | Ảnh điện thoại và máy tính của theme DEV | 05/11, chờ anh duyệt |
| **2-huong-dan-cho-anh/** | | |
| [Dựng campaign Meta test 08–14/11](2-huong-dan-cho-anh/META_CAMPAIGN_SETUP_TEST_08-14-11.md) | 7 bước + checklist, ngân sách 2 bậc | Chờ anh làm |
| [Prompt Claude in Chrome](2-huong-dan-cho-anh/PROMPT_CLAUDE_CHROME_META_DRAFT_0811.md) | Dựng bản nháp campaign, anh tự đăng | Chờ anh làm |
| [Klaviyo](2-huong-dan-cho-anh/KLAVIYO_SETUP_0711.md) | Flow bỏ giỏ, form, Welcome | Chờ anh làm |
| **3-creative/** | | |
| [Kho phong cách David & Hanna](3-creative/NOVDAT_CHARACTER_STYLE_LIBRARY.md) | Ranh giới, hồ sơ, phong cách ảnh, 10 câu nói | **Đã duyệt 05/11** |
| [Hook Lab](3-creative/HOOK_LAB_0511.md) | Bài học từ video tham khảo, 10 hook | Đang dùng |
| [Bản mô tả 2 video (bản 2)](3-creative/VIDEO_SPEC_TEST_0811.md) | Kịch bản, hook, tiêu chí đạt, token | Chờ anh duyệt lần cuối |
| [Ảnh & video thời trang Mỹ](3-creative/NOVDAT_PHOTO_VIDEO_STYLE_0511.md) | Tổng hợp phong cách + Bộ A/B/C | Tham khảo |
| [Phiếu video Uphill / Not Fast](3-creative/PHIEU_VIDEO_UPHILL_NOTFAST_0511.md) | Phiếu đầu (đã thay bằng bản mô tả video) | Lưu |
| `3-creative/hook-lab/` | Phiếu Hook Lab hằng tuần (thứ Sáu, từ 14/11) | Tự sinh |
| **4-doi-agent/** | | |
| [Đội agent NOVDAT](4-doi-agent/NOVDAT_AGENT_TEAM_DE_XUAT.md) | 6 vai, dây chuyền 1 chủ đề, lịch | **Đã duyệt 05/11** |

## Không nằm trong thư mục này (vì lý do kỹ thuật)

- **Plugin Trend Radar:** `plugins/novdat-trend/`, `.claude-plugin/`, `.claude/settings.json`. Claude Code chỉ nạp plugin khi các file này ở đúng vị trí gốc của repo, nên không chuyển được.
- **Thị trấn NOVDAT** (bảng chỉ huy): https://claude.ai/artifact/Wi91G6GU3sfB3dWaGCTk6C
- **Ảnh và video:** nằm trong Kittl, link ở nhật ký và trong từng file creative.

## Luật đặt file từ nay

- File mới luôn vào đúng 1 trong 4 thư mục trên. Không tạo file ở gốc repo.
- Mỗi file mới thêm 1 dòng vào mục lục này.

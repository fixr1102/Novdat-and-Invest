# Nhật ký phiên Claude Code — NOVDAT

File này cập nhật sau **mỗi lần** Claude báo kết quả cho anh trong phiên Claude Code cloud này (nhánh `claude/eager-sagan-t943vz`). Mục mới nhất ở trên cùng.

## Luật của file

- Claude **không phê duyệt** việc quan trọng của NOVDAT. Giá, offer, ads, publish theme, mọi lệnh ghi lên LIVE, chữ gửi khách, chính sách và chi tiêu đều do anh quyết.
- Mỗi mục ghi 3 phần:
  - **Đã làm:** việc Claude làm xong, kèm kết quả kiểm.
  - **Đã ghi ra ngoài:** mọi thứ Claude ghi vào Shopify, Thị trấn, GitHub hay dịch vụ khác. Không có thì ghi "Không".
  - **Chờ anh quyết:** chỉ anh quyết được, Claude không tự làm.
- Chỗ nào Claude tự chọn theo mặc định hoặc tự hiểu ý anh thì ghi rõ "Claude tự chọn" để anh soát.

## Quyết định đang chờ anh (gộp)

| # | Việc | Loại | Hạn gợi ý | Ở đâu |
|---|---|---|---|---|
| 1 | Xem trước theme DEV "DEV - Copy fixes 05/11 (Q1-Q3)", nếu ổn thì **anh** bấm Publish | C | trước 08/11 | Thị trấn: Tiến độ 24, Hàng đợi Q1–Q3 |
| 2 | Kiểm dòng phí ship trong giỏ (Q3) bằng thiết bị test riêng | B | trước khi publish | Tiến độ 24 |
| 3 | Thêm phí $4.99 và ngưỡng $75 vào Shipping policy | B | trước 08/11 | Admin → Policies |
| 4 | Làm checklist 10 bước trên điện thoại, gửi ảnh 1, 2, 4, 5, 7 | — | khi rảnh | Báo cáo audit, mục 6 |
| 5 | Mở mạng cloud cho Reddit, YouTube và các trang tìm web nếu muốn chạy `/novdat-trend:last30days` trên cloud | — | khi cần | README.md |
| 6 | "Rào Honest Commerce và IP" trong plugin last30days: Claude tự hiểu là **giữ lại** (anh liệt kê nó trong mục loại bỏ). Giữ hay bỏ? | B | khi rảnh | `plugins/novdat-trend/…/SKILL.md` |
| 7 | Gỡ server MCP `kittl` cấu hình local đang lỗi kết nối, nếu không cần (`claude mcp remove kittl`) | — | khi rảnh | máy cloud này |

---

## 05/11 — Tạo file nhật ký này

- **Đã làm:** tạo `NOVDAT_NHAT_KY_PHIEN.md`, ghi lại toàn bộ các lần báo cáo từ đầu phiên.
- **Đã ghi ra ngoài:** commit và push file lên GitHub (nhánh trên).
- **Chờ anh quyết:** không có việc mới. Xem bảng gộp ở trên.

## 05/11 — Thị trấn NOVDAT + sửa chữ PDP/giỏ trên theme DEV

- **Đã làm:**
  - Đọc artifact "Thị trấn NOVDAT" (tasks, queue, progress, reports, goals, config).
  - Kiểm 148 sản phẩm active: 97 Hoodie/Sweatshirt đều là 50/50 cotton-poly, Tee đều garment-dyed, không sản phẩm nào bán 2XL.
  - Kiểm 2 hoodie In Motion nhận traffic ads: có cùng các lỗi chữ.
  - Mục Halloween: Thị trấn đã ghi xong 03/11. Claude kiểm lại thì collection không còn trên kênh bán nào.
  - Xác nhận trên bản xem trước DEV: Q1 hiện đúng, CSS của Q2 có trong stylesheet. **Q3 chưa xem được** vì cần giỏ có hàng.
- **Đã ghi ra ngoài** (theo lựa chọn của anh: ghi cả 3 vào Thị trấn; Q1 phương án A; Q2 và Q3 làm cùng trên DEV):
  - Shopify: tạo theme **DEV - Copy fixes 05/11 (Q1-Q3)** (id 166940704866, chưa publish), nhân bản từ LIVE. Sửa 3 file trên DEV:
    - `templates/product.json`: chất liệu, cột 2XL, chữ free ship.
    - `blocks/buy-now.liquid`: Buy Now thành link chữ.
    - `snippets/tax-info.liquid`: dòng phí ship trong giỏ.
  - Shopify: tải `product.json` lên kho tạm riêng tư của Shopify (staged upload) để theme đọc qua URL, vì lệnh thường giới hạn 16.384 ký tự. Claude tự chọn cách này; không tạo file công khai.
  - **LIVE không bị đụng.**
  - Thị trấn: thêm Tiến độ mục 23 (audit) và 24 (DEV), Hàng đợi `q23-pdp-q1`, `q24-pdp-q2`, `q25-pdp-q3` ở trạng thái **pending**. Sửa một con số sai trong mục 23 ("77" thành "97").
  - GitHub: cập nhật đầu file báo cáo audit.
- **Chờ anh quyết:** mục 1, 2, 3 trong bảng gộp.

## 05/11 — Audit tâm lý giỏ hàng + PDP (chỉ đọc)

- **Đã làm:**
  - Đọc 3 PDP (Negative Splits Hoodie, Cold Miles Tee, Cold Miles Sweatshirt), giỏ trống, 2 trang chính sách. Đọc HTML với user-agent điện thoại, code theme LIVE và dữ liệu Admin.
  - Không thấy kỹ thuật bị Cấm. Một câu sát nhóm Cấm: "gold standard in the industry".
  - Lệch: chất liệu Hoodie/Sweatshirt, cột 2XL, "over $75", 3–7 ngày so với 4–8, giỏ thiếu dòng phí ship.
- **Claude tự chọn:** 3 PDP theo số phiên vào trang. Anh đã OK và bỏ Polo đợt này.
- **Đã ghi ra ngoài:** GitHub: `NOVDAT_AUDIT_TAMLY_CART_PDP_2026-11-05.md`. Không ghi gì lên Shopify.
- **Chờ anh quyết:** Q1, Q2, Q3. Anh đã chọn, xem mục trên. Checklist 10 bước là mục 4 trong bảng gộp.

## 05/11 — Plugin `novdat-trend` (last30days bản thu gọn)

- **Đã làm:**
  - Đóng gói engine last30days (MIT, ghim commit `e9c31b8`). Xoá hẳn code đọc cookie, client X dùng cookie và phần đăng lên ht-ml.app.
  - Script trung gian chỉ cho phép Reddit, YouTube và tìm web. Nó chặn ScrapeCreators, Polymarket, GitHub, tín hiệu tuyển dụng, trending, và xoá mọi API key khỏi môi trường trước khi chạy.
  - Viết skill tiếng Việt kèm lệnh mẫu cho Running, Pickleball, Noel. Mọi báo cáo bắt buộc ghi "chưa lọc được tại Mỹ".
  - Kiểm: chặn đúng các cờ cấm, chạy thử dữ liệu giả thành công. **Chưa chạy được dữ liệu thật trên cloud**, vì mạng chặn Reddit/YouTube.
- **Claude tự chọn:** giữ "Rào Honest Commerce và IP" (mục 6 bảng gộp). Lập danh sách subreddit mẫu.
- **Đã ghi ra ngoài:** GitHub: plugin, marketplace, `.claude/settings.json`, README. Cài plugin ở scope project trong phiên cloud.
- **Chờ anh quyết:** mục 5, 6 trong bảng gộp.

## 05/11 — Lệnh `claude mcp add kittl`

- **Đã làm:** chạy lệnh anh đưa. Server được thêm vào cấu hình local nhưng không kết nối được, vì mạng cloud chặn `mcp.kittl.com`. Connector Kittl_AI của claude.ai vẫn dùng bình thường.
- **Đã ghi ra ngoài:** Không. Chỉ sửa `/root/.claude.json` trong container tạm.
- **Chờ anh quyết:** mục 7 trong bảng gộp.

## 03/11 — Ẩn collection Halloween

- **Đã làm:**
  - Đọc: collection đăng trên 6 kênh; không menu nào trỏ tới; theme MAIN không nhắc tới.
  - Lệnh `publishableUnpublish` (anh đã duyệt) bị connector Shopify chặn theo chính sách an toàn. Claude dừng, không lách.
- **Đã ghi ra ngoài:** Không.
- **Kết quả sau đó:** anh tự gỡ 6 kênh trong Admin (Thị trấn ghi xong 03/11). Claude kiểm lại 05/11: còn 0 kênh.

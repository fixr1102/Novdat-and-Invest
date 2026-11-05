# Đội agent NOVDAT (Founder duyệt 05/11/2026)

Ngày 05/11/2026 · Claude soạn, học từ video LinTech "19 AI agent" (xem `NOVDAT_TAI_LIEU/3-creative/HOOK_LAB_0511.md`, mục 2).

## 0. Nguyên tắc (giữ từ One Plan và luật phiên)

- **Founder là người duyệt duy nhất.** Agent chỉ nghiên cứu, soạn nháp, kiểm và báo cáo.
- Agent không publish, không chi tiền, không ghi lên LIVE, không gửi chữ cho khách.
- "Anh đi ngủ, đội vẫn chạy" **chỉ áp cho** việc đọc, nghiên cứu, soạn nháp. Không áp cho việc đăng hay tiêu tiền.
- **Không làm 19 agent.** Plan giới hạn WIP 2 việc lớn và quỹ giờ khoảng 40 giờ/tuần, nên chỉ đề xuất **6 vai**, phần lớn đã có sẵn công cụ.
- Mỗi tấm ảnh hay video trên Kittl vẫn chờ anh duyệt trước. Video cần Phiếu.
- **Thị trấn NOVDAT** là "trụ sở" (bảng chỉ huy duy nhất). Nhật ký phiên là sổ ghi của đội.

## 1. Sáu vai

| # | Vai ("toà nhà") | Làm gì | Công cụ đã có | Nhịp | Đầu ra cho anh |
|---|---|---|---|---|---|
| 1 | **Trinh sát** (nghiên cứu thị trường) | Đọc xu hướng ở Mỹ: Reddit, Pinterest (CSV anh xuất), tin chạy bộ; lắng nghe cộng đồng theo mục 1.6 | Plugin `novdat-trend`, việc định kỳ `m1` | **Đang chạy:** thứ Hai và thứ Năm, 08:13 | Báo cáo 1 trang + 3 đề xuất |
| 2 | **Hook Lab** (sáng tạo) | Biến dữ liệu Trinh sát thành hook, kịch bản và Phiếu video/ảnh theo công thức "câu dở dang, áo nói nốt" | `NOVDAT_TAI_LIEU/3-creative/HOOK_LAB_0511.md`, kho phong cách David/Hanna, skill `novdat-video-prompt` | Mới: 1 lần/tuần, sau Trinh sát | 3 Phiếu chờ duyệt |
| 3 | **Gác cổng chữ** (tuân thủ) | Kiểm copy của Muse và hook theo luật Meta, Honest Commerce, nhãn hiệu (USPTO 025), nhãn AI | Skill `novdat-marketing-psychology`, rào trong plugin | Mỗi khi có chữ mới | Bảng "đạt / sửa", lý do |
| 4 | **Xưởng** (media) | Tạo ảnh, video trên Kittl **sau khi anh duyệt Phiếu**; tự chấm theo tiêu chí; báo token | Kittl MCP, skill `novdat-seedance-kittl`, `novdat-style-library` | Theo Phiếu | Link Kittl + tự chấm |
| 5 | **Đọc số** (ads, store) | Đọc Meta (Adspirer, chỉ đọc) và Shopify; so với ngưỡng dừng/scale của plan | Adspirer, Shopify (chỉ đọc), ShopifyQL | **Đã lịch:** 10/11, 11/11, 12/11, 15/11 | Báo cáo số + đề xuất giữ/dừng |
| 6 | **Chánh văn phòng** (điều phối) | Gom đầu ra 5 vai, cập nhật Thị trấn và nhật ký, nhắc việc anh cần chốt | Thị trấn, nhật ký phiên, skill `novdat-chief-of-staff` | Sau mỗi lần báo | Danh sách "anh cần chốt" |

**Muse** vẫn viết copy quảng cáo và trang sản phẩm (đúng vai đã chốt ngày 02/11). Gác cổng chữ chỉ kiểm, không viết thay.

## 2. Dây chuyền một chủ đề (như video LinTech)

Ví dụ chủ đề: "Hoodie chạy bộ mùa lạnh".

1. **Trinh sát:** Pinterest "winter running outfit" tăng 100–200%/tháng; Reddit nói gì về chạy lạnh.
2. **Hook Lab:** 3 hook (H2, H7, H9) + 3 Phiếu.
3. **Gác cổng chữ:** kiểm chữ trên màn hình và primary text.
4. **Anh duyệt** Phiếu nào.
5. **Xưởng:** tạo đúng Phiếu đã duyệt, báo token.
6. **Anh** ghép chữ, nhạc, đăng.
7. **Đọc số:** 3–4 ngày sau báo hook nào giữ người xem.
8. **Chánh văn phòng:** ghi Thị trấn, nhật ký; hook thắng vào kho.

## 3. Cái gì làm được ngay, cái gì cần anh cho phép

| Việc | Trạng thái |
|---|---|
| Vai 1, 5, 6 | Đã chạy hoặc đã lịch, không cần thêm gì |
| Vai 2: lịch Hook Lab hằng tuần (phiên mới mỗi lần chạy, chỉ soạn Phiếu, **không** tạo ảnh/video) | **Cần anh duyệt** |
| Vai 4: tạo ảnh/video | Vẫn theo luật cũ: anh duyệt từng Phiếu |
| Thêm tab **"Đội"** vào Thị trấn: mỗi vai một ô, việc đang làm và việc chờ anh (giống "trụ sở" trong video) | **Cần anh duyệt** |

**Chi phí:**
- Mỗi lần lịch chạy dùng hạn mức Claude của anh.
- Token Kittl chỉ tốn khi anh đã duyệt Phiếu.

## 4. Founder đã chốt (05/11/2026)

1. **Duyệt 6 vai** ở mục 1.
2. **Hook Lab: thứ Sáu hằng tuần, 3 phiếu/tuần.** Lần chạy thật đầu tiên là 14/11, sau khi có số đọc ngày 11/11. Lịch chạy ngày 07/11 tự bỏ qua.
3. **"Thêm khi cần để rõ quy trình, tránh rác và rối thông tin."** Claude áp dụng như sau:
   - **Không** thêm tab mới vào Thị trấn. Chỉ thêm **1 thẻ Tiến độ `p44` "Đội agent"**, ghi 6 vai và lịch của từng vai.
   - Mỗi lần chạy, Hook Lab ghi **1 file** (`NOVDAT_TAI_LIEU/3-creative/hook-lab/<ngày>-phieu.md`) và **1 thẻ Hàng đợi** cho anh. Không tạo thêm thẻ nào khác.
   - Mọi file của đội nằm trong thư mục `NOVDAT_TAI_LIEU/`.

# Hướng dẫn dựng campaign Meta — Test In Motion 08–14/11

Dành cho: Founder tự dựng trong Meta Ads Manager (business.facebook.com → Ads Manager). Khoảng 45–60 phút.
Cấu trúc đã chốt 03/11: **1 campaign Sales · 1 ad set · 5 quảng cáo (3 băng chuyền ảnh + 2 video) · $315 / 7 ngày · Mỹ · 25–45 tuổi · bỏ Audience Network · tối ưu Purchase.**

> Giao diện Meta đổi thường xuyên. Tên nút có thể khác một chút, nhưng thứ tự các bước giữ nguyên. Gặp chỗ khác với hướng dẫn thì chụp màn hình gửi Claude.

---

## Bước 0 — Kiểm trước (10 phút, làm 1 lần)

| # | Kiểm | Ở đâu | Đạt khi |
|---|---|---|---|
| 0.1 | Đúng tài khoản quảng cáo | Ads Manager, góc trên trái | Tên tài khoản "podnew" (id 2676789139407166) |
| 0.2 | Thẻ thanh toán còn hạn mức | Billing & payments | Có thẻ, đủ $315 + dư |
| 0.3 | Pixel/dataset "pod" hoạt động | Events Manager → dataset "pod" | AddToCart, InitiateCheckout "Active" (đã kiểm 02/11) |
| 0.4 | Tên miền đã xác minh | Business settings → Brand safety → Domains | `novdat.com` có dấu xanh |
| 0.5 | Trang Facebook và Instagram nối với tài khoản quảng cáo | Business settings → Accounts | Có Page NOVDAT và IG NOVDAT |
| 0.6 | Ảnh và video đã duyệt | Thị trấn, Tiến độ 11 và 12 | 9 ảnh (bản sửa 05/11) + 2 video |

Thiếu mục nào thì dừng, báo Claude.

---

## Bước 1 — Tạo campaign

1. Ads Manager → **+ Create**.
2. Objective: **Sales** → Continue.
3. Chọn **Manual sales campaign** (tự đặt), **không** chọn Advantage+ sales campaign. Ta cần kiểm soát tuổi và vị trí hiển thị.
4. Tên campaign: `NOVDAT_TEST_InMotion_0811_Sales`
5. **Special ad categories:** để trống (quần áo không thuộc nhóm đặc biệt).
6. **Advantage campaign budget:** **TẮT**. Ngân sách đặt ở ad set (Bước 2).
7. **A/B test:** tắt.

## Bước 2 — Tạo ad set

1. Tên: `AS_US_25-45_Purchase`
2. **Conversion location:** Website.
3. **Dataset/Pixel:** `pod`. **Conversion event:** **Purchase** (đã chốt 03/11).
   - *Lưu ý của Claude, không phải quyết định:* store chưa có đơn nào, nên tối ưu Purchase có thể học chậm. Quy tắc dừng ngày 3 (dưới đây) vẫn giữ để kiểm soát. Muốn đổi sang tối ưu Add to cart thì anh quyết (loại C).
4. **Budget & schedule:**
   - Chọn **Lifetime budget: $315**.
   - Start: **08/11/2026 00:00**, End: **14/11/2026 23:59**. Múi giờ theo tài khoản quảng cáo; kiểm lại múi giờ là giờ Mỹ (ET).
   - Muốn dễ dừng giữa chừng thì dùng **Daily $45** thay cho Lifetime. Cả hai đều ra khoảng $315.
5. **Audience:**
   - Locations: **United States** (People living in or recently in this location).
   - Age: **25–45**. Nếu Meta mở chế độ "Advantage+ audience", chọn dùng tuổi 25–45 làm **giới hạn cứng** (tuỳ chọn "Further limit the reach…" hoặc "original audience options"), để Meta không chạy ra ngoài độ tuổi.
   - Gender: All.
   - Languages: English (tuỳ chọn).
   - Detailed targeting: để trống cho test (Meta tự tìm).
6. **Placements:** chọn **Manual placements**, rồi:
   - **BỎ Audience Network** (đã chốt).
   - Giữ: Facebook Feed, Instagram Feed, Instagram Stories, Instagram Reels, Facebook Reels, Facebook Stories.
   - Tắt Messenger, Threads, Search nếu muốn gọn (không bắt buộc).
7. **Optimization & delivery:** để mặc định (Conversions · Highest volume).

## Bước 3 — Tạo 3 quảng cáo băng chuyền (carousel)

Làm lần lượt Quảng cáo ảnh 1, 2, 3 theo **bảng ảnh đã duyệt** (Thị trấn, Tiến độ 11; bản sửa 05/11 là 3 thẻ mỗi quảng cáo).

Mỗi quảng cáo:
1. Tên: `AD_IMG1_MorningAnyway` / `AD_IMG2_OwnPace` / `AD_IMG3_EverydayRun`
2. **Identity:** Facebook Page NOVDAT + Instagram NOVDAT.
3. **Ad setup:** Create ad → Format: **Carousel**.
4. **Primary text:** dán "Dòng mở đầu" của quảng cáo đó (bảng Tiến độ 11).
5. Mỗi thẻ:
   - **Image:** tải ảnh từ link trong Tiến độ 11.
   - **Headline:** tiêu đề thẻ (ví dụ "Shoes on, even tired").
   - **Description:** để trống, hoặc tên áo + loại (Hoodie/Sweatshirt).
   - **Website URL:** link trang sản phẩm **đúng màu** trong ảnh.
6. **Call to action:** **Shop now**.
7. **Tracking → URL parameters:** dán
   `utm_source=facebook&utm_medium=paid&utm_campaign=test_inmotion_0811&utm_content={{ad.name}}`
8. Tắt **"Show the best performing cards first"** nếu muốn giữ đúng thứ tự thẻ (thẻ 1 là thẻ quan trọng nhất).

## Bước 4 — Tạo 2 quảng cáo video

1. Tên: `AD_VID1_UphillSlowly` / `AD_VID2_NotFast`
2. Format: **Single image or video** → tải video (từ Kittl, đã duyệt).
3. Primary text, headline: theo Phiếu video đã duyệt (Tiến độ 12).
4. Website URL: trang sản phẩm của mẫu trong video. CTA **Shop now**. URL parameters như Bước 3.
5. Video có người mẫu AI (David/Hanna): thêm vào cuối primary text dòng `Visuals created with AI.`, theo luật NOVDAT gắn nhãn AI.

## Bước 5 — TẮT các tính năng Meta tự sửa nội dung (bắt buộc, Honest Commerce)

Ở mỗi quảng cáo, mục **Advantage+ creative / Creative enhancements**:
- **Tắt** tất cả: text improvements, add music, image expansion, generate backgrounds, AI-generated variations, add overlays, product tags tự động, site links tự động.
- Lý do: Meta có thể tự viết lại chữ, thêm câu khẩn cấp hay đổi ảnh. Như vậy sai luật Honest Commerce, và chữ có thể không khớp giá hay chính sách thật.

## Bước 6 — Đăng ở trạng thái TẠM DỪNG

1. Kiểm lại bằng **Preview** trên Feed, Stories và Reels. Xem chữ có bị che không.
2. Bấm **Publish**.
3. Ngay sau đó **tắt công tắc campaign (OFF)** nếu ngày bắt đầu chưa tới. Meta vẫn duyệt quảng cáo khi campaign đang tắt.
4. Đợi Meta duyệt (thường dưới 24 giờ). Nên đăng **trước 07/11** để kịp chạy ngày 08/11.
5. Ngày 08/11: bật campaign **ON**. Chỉ anh bật.

## Bước 7 — Theo dõi và quy tắc dừng

| Khi nào | Xem gì | Quyết định (anh) |
|---|---|---|
| Mỗi tối | Spend, CTR (link), CPC, Add to cart, Initiate checkout, Purchase | Ghi 1 dòng vào Thị trấn |
| **Ngày 3 (~$135 đã chi)** | **Add to cart = 0?** | **= 0 thì DỪNG** (đã chốt) |
| 10/11 | Claude đọc kết quả theo tuổi, giới tính, bang, vị trí (chỉ đọc) | Xem nhóm nào phản hồi |
| 15/11 | Tổng kết test | Chọn mẫu và hướng tiếp |

Không sửa quảng cáo trong 3 ngày đầu (để Meta học), trừ khi gặp quy tắc dừng.

---

## Checklist cuối trước khi bấm Publish

- [ ] Tài khoản podnew, pixel pod, Purchase.
- [ ] Lifetime $315 (hoặc Daily $45), 08–14/11.
- [ ] Mỹ, 25–45 (giới hạn cứng), All genders.
- [ ] Audience Network đã bỏ.
- [ ] 3 carousel (đúng thứ tự thẻ, đúng link màu) + 2 video.
- [ ] Mọi Creative enhancements đã TẮT.
- [ ] URL parameters đã dán ở cả 5 quảng cáo.
- [ ] Video AI có dòng "Visuals created with AI."
- [ ] Không chữ khẩn cấp, không giá gạch, không hứa giao kịp lễ.
- [ ] Campaign đang OFF, chờ 08/11.

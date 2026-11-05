# Prompt: dựng BẢN NHÁP campaign Meta bằng Claude Code + Claude in Chrome (máy local của Founder)

**Cách dùng:**
1. Trên máy anh, mở Chrome đã đăng nhập Meta Business. Ads Manager đúng tài khoản **podnew (2676789139407166)**.
2. Làm **Bước A** dưới đây bằng tay (2 phút).
3. Mở Claude Code có Claude in Chrome, dán **toàn bộ khung PROMPT** bên dưới.
4. Agent chỉ dựng **bản nháp**. **Anh là người duy nhất bấm "Xem lại và đăng" (Publish).**

---

## Bước A (Founder làm tay trước): tải 11 ảnh vào thư viện Meta

Agent trình duyệt thường không mở được hộp chọn file của máy, nên anh tải ảnh lên thư viện trước:
1. Mở từng link dưới đây, lưu ảnh với **đúng tên trong cột "Tên file"**.
2. Ads Manager → menu ☰ → **Phương tiện / Media library** → **Tải lên** → chọn cả 11 file.

| Thẻ | Tên file | Link ảnh |
|---|---|---|
| 1.1 | `1-1_FiveMore_SweatBlack_F.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/17906478413168478237_2048.jpg |
| 1.2 | `1-2_FirstLight_HoodieWhite_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/173881473262261698_4096.jpg |
| 1.3 | `1-3_Tired_HoodieCharcoal_F.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/15035697684689562422_4096.jpg |
| 1.4 | `1-4_RunningThinkLess_SweatSand_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/6620632625566841835_2048.jpg |
| 2.1 | `2-1_ProudlyMidPack_SweatBlack_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/18406026324290603768_2048.jpg |
| 2.2 | `2-2_NotFast_HoodieWhite_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/9296570421104185714_4096.jpg |
| 2.3 | `2-3_StillRunning_HoodieSand_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/3366398246768372123_4096.jpg |
| 2.4 | `2-4_Uphill_SweatWhite_F.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/14849079316921755986_2048.jpg |
| 3.1 | `3-1_ColdMiles_SweatWhite_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/4365741834010131536_2048.jpg |
| 3.2 | `3-2_CarbLoaded_HoodieWhite_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/11588925129593356339_4096.jpg |
| 3.3 | `3-3_RunNow_HoodieBlack_M.jpg` | https://cdn.shopify.com/s/files/1/0684/2400/7778/files/6178003841181228616_4096.jpg |

> **Lưu ý trước khi giao cho agent:** Ads Manager đang có **6 thay đổi chưa đăng** (nút "Xem lại và đăng (6)"), trong đó "Chiến dịch Lượt tương tác…" có ghi "Điều chỉnh sửa chưa đăng". Khi anh đăng campaign mới, hộp "Xem lại và đăng" có thể gom cả 6 thay đổi cũ. Anh xem và **bỏ chọn** những gì không muốn đăng.

---

## PROMPT (dán nguyên khung này)

```
Bạn đang giúp Founder NOVDAT dựng BẢN NHÁP một campaign Meta trong Ads Manager bằng Claude in Chrome. Giao diện Ads Manager đang là tiếng Việt.

LUẬT CỨNG — vi phạm là DỪNG NGAY:
1. KHÔNG bấm "Xem lại và đăng", "Đăng", "Publish", "Bật", hay bất kỳ nút nào làm quảng cáo chạy hoặc tiêu tiền. Founder tự đăng.
2. KHÔNG bấm "Bỏ bản nháp", KHÔNG sửa, tắt, bật hay xoá campaign nào khác (R1_Sales_US_20-10_v2, R1_Sales_US_20-10, HW26_CreativeTest_2509, New Sales Campaign, Chiến dịch Lượt tương tác…).
3. KHÔNG đổi phương thức thanh toán, cài đặt tài khoản, pixel hay quyền người dùng.
4. KHÔNG tự viết thêm chữ quảng cáo. Chỉ dán đúng chữ trong bảng dưới.
5. Gặp hộp thoại lạ, lỗi, hay chỗ không khớp hướng dẫn: DỪNG, chụp màn hình, hỏi Founder.
6. Chỉ làm trong tài khoản quảng cáo "podnew" (2676789139407166).

BƯỚC 1 — CAMPAIGN
- Bấm "+ Tạo". Mục tiêu: "Doanh số" (Sales). Chọn thiết lập thủ công (Manual / không dùng Advantage+ sales campaign).
- Tên campaign: NOVDAT_TEST_InMotion_0811_Sales
- Danh mục quảng cáo đặc biệt: không chọn.
- Ngân sách chiến dịch Advantage (Advantage campaign budget): TẮT.
- Thử nghiệm A/B: tắt.

BƯỚC 2 — NHÓM QUẢNG CÁO (ad set)
- Tên: AS_US_25-45_Purchase
- Vị trí chuyển đổi: Trang web. Tập dữ liệu/Pixel: "pod". Sự kiện chuyển đổi: Mua hàng (Purchase).
- Ngân sách: Ngân sách hằng ngày 50 USD.
- Lịch: Bắt đầu 08/11/2026 00:00 — Kết thúc 11/11/2026 23:59. Ghi lại múi giờ tài khoản hiển thị.
- Đối tượng: Vị trí = Hoa Kỳ (người sống ở hoặc mới ở đây). Tuổi 25–45, đặt làm giới hạn cứng nếu Meta có tuỳ chọn Advantage+ audience. Giới tính: tất cả. Không thêm nhắm chi tiết.
- Vị trí quảng cáo: Thủ công. BỎ CHỌN Audience Network. Giữ Facebook Feed, Instagram Feed, Instagram Stories, Instagram Reels, Facebook Reels, Facebook Stories.

BƯỚC 3 — 3 QUẢNG CÁO BĂNG CHUYỀN (Carousel)
Với mỗi quảng cáo: Danh tính = Trang Facebook NOVDAT + Instagram NOVDAT. Định dạng: Băng chuyền. Nút kêu gọi: "Mua ngay" (Shop now). Ảnh lấy từ thư viện phương tiện theo đúng tên file. Tắt "Tự động hiển thị thẻ hiệu quả nhất trước" để giữ thứ tự thẻ.
Tham số URL (mục Theo dõi), dán cho cả 3 quảng cáo:
utm_source=facebook&utm_medium=paid&utm_campaign=test_inmotion_0811&utm_content={{ad.name}}

QUẢNG CÁO 1 — Tên: AD_IMG1_MorningAnyway
Văn bản chính: New: In Motion: every morning, every day, our own goal.
 Thẻ 1 | ảnh 1-1_FiveMore_SweatBlack_F.jpg | Tiêu đề: We get up and go anyway | URL: https://novdat.com/products/five-more-minutes-then-miles-sweatshirt?variant=50809873662050
 Thẻ 2 | ảnh 1-2_FirstLight_HoodieWhite_M.jpg | Tiêu đề: A new day, full of life | URL: https://novdat.com/products/first-light-open-field-hoodie?variant=50809872449634
 Thẻ 3 | ảnh 1-3_Tired_HoodieCharcoal_F.jpg | Tiêu đề: Shoes on, even tired | URL: https://novdat.com/products/tired-went-anyway-hoodie?variant=50809040306274
 Thẻ 4 | ảnh 1-4_RunningThinkLess_SweatSand_M.jpg | Tiêu đề: Less thinking, more running | URL: https://novdat.com/products/running-to-think-less-sweatshirt?variant=50809870254178

QUẢNG CÁO 2 — Tên: AD_IMG2_OwnPace
Văn bản chính: The new running collection: getting past our own limit is enough, one step at a time.
 Thẻ 1 | ảnh 2-1_ProudlyMidPack_SweatBlack_M.jpg | Tiêu đề: Out there, and proud of it | URL: https://novdat.com/products/proudly-mid-pack-sweatshirt?variant=50809041485922
 Thẻ 2 | ảnh 2-2_NotFast_HoodieWhite_M.jpg | Tiêu đề: From hard to easy | URL: https://novdat.com/products/not-fast-still-out-here-hoodie?variant=50809497518178
 Thẻ 3 | ảnh 2-3_StillRunning_HoodieSand_M.jpg | Tiêu đề: The little mascot keeps going | URL: https://novdat.com/products/still-running-hoodie?variant=50809879199842
 Thẻ 4 | ảnh 2-4_Uphill_SweatWhite_F.jpg | Tiêu đề: One step at a time | URL: https://novdat.com/products/uphill-slowly-sweatshirt?variant=50809877528674

QUẢNG CÁO 3 — Tên: AD_IMG3_EverydayRun
Văn bản chính: The new running collection from NOVDAT. Each design has its own story.
 Thẻ 1 | ảnh 3-1_ColdMiles_SweatWhite_M.jpg | Tiêu đề: Snow falling, we keep going | URL: https://novdat.com/products/cold-miles-sweatshirt?variant=50809875300450
 Thẻ 2 | ảnh 3-2_CarbLoaded_HoodieWhite_M.jpg | Tiêu đề: A very busy day, still dinner | URL: https://novdat.com/products/carb-loaded-barely-trained-hoodie?variant=50809496404066
 Thẻ 3 | ảnh 3-3_RunNow_HoodieBlack_M.jpg | Tiêu đề: Run Now. Stay Strong. | URL: https://novdat.com/products/run-now-stay-strong-hoodie?variant=50808188305506

BƯỚC 4 — TẮT MỌI TÍNH NĂNG META TỰ SỬA NỘI DUNG (bắt buộc)
Ở cả 3 quảng cáo, mục "Cải thiện nội dung Advantage+" / "Creative enhancements": TẮT HẾT (cải thiện văn bản, thêm nhạc, mở rộng ảnh, tạo nền, biến thể AI, lớp phủ, thẻ sản phẩm, liên kết trang web tự động). Kiểm lại từng quảng cáo.

BƯỚC 5 — KIỂM VÀ DỪNG
- Xem "Xem trước" trên Feed, Stories, Reels của từng quảng cáo; ghi lại nếu chữ bị cắt.
- KHÔNG ĐĂNG. Để nguyên ở trạng thái bản nháp.
- Báo cáo cho Founder: (a) tên campaign / ad set / 3 quảng cáo đã tạo; (b) múi giờ tài khoản; (c) danh sách tính năng đã tắt ở Bước 4; (d) mọi chỗ khác với hướng dẫn; (e) ảnh chụp màn hình phần xem trước của 3 quảng cáo.
```

---

## Sau khi agent báo xong (Founder)

1. Đối chiếu với [hướng dẫn dựng campaign](./META_CAMPAIGN_SETUP_TEST_08-14-11.md), checklist cuối.
2. Bấm **"Xem lại và đăng"**. **Bỏ chọn** các thay đổi cũ không liên quan. Đăng **trước 07/11** để Meta kịp duyệt.
3. Ad set có ngày bắt đầu 08/11, nên đăng sớm vẫn **chưa tiêu tiền** trước 08/11.
4. 2 quảng cáo video sẽ thêm vào cùng ad set khi video xong (prompt riêng).

# Hướng dẫn Klaviyo — trước 08/11 (Founder làm, khoảng 40 phút)

Thứ tự ưu tiên (đã chốt): **1. Flow bỏ giỏ/thanh toán dở** (cứu khách từ ads) → **2. Form đăng ký** → **3. Flow Welcome 2 email (mã WELCOME10)**.
Chữ form và 2 email: dùng **bản anh đã duyệt 03/11** (gói Welcome 10%). Nếu muốn Claude soát lại, dán vào chat.

> Giao diện Klaviyo hay đổi tên nút. Thấy khác thì chụp màn hình gửi Claude.

## Luật áp dụng cho mọi email và form

- **Không** đếm ngược, không "hurry", "last chance", "only X left", không giá gạch.
- **Mỗi đơn chỉ một ưu đãi:** WELCOME10 **không cộng dồn** với "Buy 2, save 15%" (cấu hình Shopify thật). Nói rõ điều này trong email Welcome.
- **Ô đồng ý nhận email không tích sẵn.**
- Giao hàng: "4 to 8 business days (US)"; ship $4.99, free từ $75 (sau giảm giá). **Không hứa giao kịp lễ.**
- Founder không lộ mặt, không lộ tên; ký "— Founder, NOVDAT".

---

## Bước 0 — Kiểm nối (5 phút)

| # | Kiểm | Ở đâu | Đạt khi |
|---|---|---|---|
| 0.1 | Shopify nối Klaviyo | Klaviyo → Integrations → Shopify | "Connected", đồng bộ khách và đơn |
| 0.2 | Mã theo dõi Klaviyo bật trên theme | Shopify → Online Store → Themes → Customize → **App embeds** → Klaviyo | Bật trên theme **đang LIVE**. Nếu anh publish theme DEV mới, kiểm lại ở theme đó |
| 0.3 | Sự kiện "Started Checkout" có về | Klaviyo → Analytics → Metrics | Thấy "Started Checkout" hoặc "Checkout Started" |
| 0.4 | Danh sách nhận tin | Audience → Lists & segments | Có list, ví dụ "Newsletter" |

## Bước 1 — Flow thanh toán dở (Abandoned Checkout)

1. **Flows → Create flow → Browse pre-built** → chọn **Abandoned Checkout** (trigger: *Started Checkout*).
2. **Flow filter:** *Placed Order zero times since starting this flow*.
3. **Email 1:** gửi sau **4 giờ**.
   - Tiêu đề gợi ý (chọn một): `You left something in your cart` / `Still thinking it over?`
   - Nội dung: khối sản phẩm trong giỏ (dynamic block) + 3 dòng thật:
     - `Made to order. Delivered in 4 to 8 business days (US).`
     - `Free US shipping on $75+ (after discounts). Flat $4.99 under $75.`
     - `Arrived damaged, defective, or misprinted? We'll send a free reprint or full refund within 30 days.`
   - Nút: `Return to your cart`
   - **Không gắn mã giảm giá** (mỗi đơn một ưu đãi; Buy 2 đã tự áp).
4. *(Tuỳ chọn)* **Email 2:** sau **24 giờ**, nhắc nhẹ, cùng nội dung, không giảm giá.
5. Bật **Smart Sending**. Bấm **Preview** và **Send test** về email của anh.
6. **Anh** đặt trạng thái **Live**.

> **Vì sao không dùng "Added to Cart":** flow này cần thêm cài đặt theo dõi trên theme. Bắt đầu với "Started Checkout" là đủ cho test 08/11. Muốn thêm sau thì Claude hướng dẫn.

## Bước 2 — Form đăng ký (Signup form)

1. **Sign-up forms → Create form** → kiểu **Flyout** hoặc **Popup** (khuyên dùng Flyout góc dưới, đỡ phiền trên điện thoại).
2. Chữ: dùng bản đã duyệt 03/11. Ví dụ khung (chỉ để định dạng): tiêu đề `10% off your first order`; dòng phụ `Join the NOVDAT list. One email when there's something worth sharing.`
3. Trường: chỉ **Email**. Ô đồng ý (nếu bật) **không tích sẵn**.
4. Gửi vào list **Newsletter**.
5. **Targeting & behavior:**
   - Hiện sau **15 giây** hoặc khi cuộn **50%**.
   - **Không** hiện trên trang `/cart` và checkout.
   - Đã đăng ký rồi thì không hiện lại.
   - Đóng form thì ẩn **7 ngày**.
6. Bấm **Preview** trên **mobile**, rồi **Publish**.

## Bước 3 — Flow Welcome 2 email (mã WELCOME10)

1. **Flows → Create flow → Welcome Series** (trigger: *Added to List: Newsletter*).
2. **Email 1** (gửi ngay): chữ đã duyệt 03/11, có mã **WELCOME10**. Bắt buộc ghi:
   - `10% off your first order. One use per customer.`
   - `Can't be combined with Buy 2, save 15%.`
   - Không có ngày hết hạn (mã trên Shopify không đặt hạn). **Không** viết "expires soon".
3. **Email 2** (sau **2–3 ngày**): câu chuyện NOVDAT ("Wear Less. Mean More."), ký `— Founder, NOVDAT`. Không lộ mặt hay tên.
4. Bật Smart Sending → Send test → **anh** đặt **Live**.

## Bước 4 — Kiểm cuối (5 phút)

- [ ] 3 flow ở trạng thái Live (hoặc anh chủ động để Draft).
- [ ] Đã nhận email test; link về đúng novdat.com; ảnh sản phẩm hiện.
- [ ] Form hiện trên điện thoại sau 15 giây, không hiện ở `/cart`.
- [ ] Không có chữ khẩn cấp hay giá gạch; ghi đúng "not combinable with Buy 2".
- [ ] Báo Claude để cập nhật Thị trấn (Tiến độ 21).

# Audit tâm lý mua hàng: giỏ hàng và PDP — novdat.com, 05/11/2026

Chỉ đọc. Không ghi gì lên LIVE, không bấm Add to cart, không checkout. Mọi đề xuất ở mục 5 là **[ĐỀ XUẤT] của Claude, chưa phải quyết định của anh**.

## 1. Phạm vi và nguồn

| Nguồn | Nội dung | Thời điểm |
|---|---|---|
| Storefront, UA iPhone Safari (curl, không chạy JS) | `/products/negative-splits-positive-vibes-hoodie`, `/products/cold-miles-t-shirt`, `/products/cold-miles-sweatshirt`, `/cart` (giỏ trống), `/policies/refund-policy`, `/policies/shipping-policy`, `.js` của 3 sản phẩm | 05/11 ~04:45 UTC |
| Code theme MAIN "LIVE - Working 17/10" (chỉ đọc) | `templates/product.json`, `templates/cart.json`, `sections/header-group.json`, `main-cart`, `cart-drawer`, `cart-summary`, `cart-products`, `price`, `launch-price-note`, `locales/en.default.json` | 05/11 |
| Admin (GraphQL đọc, ShopifyQL) | Giá, compare-at, biến thể; discount; delivery profile; phiên 30 ngày theo thiết bị; landing page 14 ngày | 05/11 |

Polo bỏ khỏi đợt này (anh chốt). Hoodie chọn vì là PDP có nhiều phiên landing nhất 14 ngày (10/94). Tee và Sweatshirt thuộc bộ Cold Miles (Winter Running).

**Giới hạn:** HTML lấy bằng curl không chạy JavaScript. Nút Shop Pay/Apple Pay, popup, thanh sticky và badge Judge.me phải kiểm trên điện thoại thật (mục 6).

**Dữ liệu phiên (Admin, 30 ngày):** mobile 495 phiên, 1 phiên có thêm giỏ (0,2%); desktop 607 phiên, 94 phiên thêm giỏ (15,5%). Tỷ lệ desktop cao bất thường, có thể do test nội bộ hoặc bot. **[CẦN KIỂM]** xem có bao nhiêu phiên là người thật từ Mỹ. Chưa lọc được thì mọi lý do "khách bỏ vì X" bên dưới là [GIẢ THUYẾT].

## 4. Vi phạm Honest Commerce (đặt lên đầu)

**Không thấy kỹ thuật nhãn Cấm nào trên 3 PDP và giỏ:** không đồng hồ đếm ngược, không bộ đếm tồn kho, không chữ khẩn cấp, không giá gạch. Admin không có compare-at trên cả 56 biến thể đã đọc. Snippet "Launch price — increases to…" có trong theme nhưng không hiện trên 3 PDP này.

**Một điểm sát nhóm Cấm:** trên Cold Miles. T-Shirt, mục Fabric & Care ghi *"…the heavyweight, garment-dyed, 100% ring-spun cotton tee that's considered the gold standard in the industry"*. "Gold standard in the industry" là tuyên bố chất lượng bậc nhất, không có nguồn kiểm được, cùng loại với "premium fabric" (CLAUDE.md §1.5). Nhãn: **Cấm**, [DỮ LIỆU THẬT]. Chữ gửi khách thuộc loại B, anh duyệt cách sửa.

## 2. Bảng đối chiếu chữ trên trang và cấu hình thật

| Chữ trên trang | Cấu hình thật | Kết quả |
|---|---|---|
| Tee $26.60 · Sweatshirt $33.90 · Hoodie $46.60 | Admin: đúng các giá đó, mọi biến thể cùng giá | Khớp |
| Không có giá gạch | compare-at = null | Khớp |
| "Flat $4.99 on orders under $75 (after discounts)." | Standard $4.99 cho $0–74.99; ngưỡng tính sau giảm giá (anh xác nhận 05/11) | Khớp |
| "Free shipping over $75" | Free khi tổng **≥ $75.00** | Lệch chữ: đơn đúng $75 cũng được free, nhưng "over" nghe như phải trên $75 |
| "Delivered in 4 to 8 business days" (3 chỗ trên PDP) | Policy: "about 4–8 business days total… on average" | Khớp |
| "Made to order: 1–2 business days · Standard shipping: 2–5 business days · Estimated delivery: 4 to 8" | 1–2 cộng 2–5 ra 3–7 ngày | Lệch nội bộ nhỏ |
| "Buy any 2 items, save 15%. Applied automatically at checkout." (banner sticky, PDP, giỏ) | Automatic "Buy 2, save 15%" ACTIVE, tối thiểu 2 món, không cộng dồn | Khớp. **[CẦN KIỂM]** giỏ có hiện mức giảm trước checkout không |
| Không nhắc Welcome 10% ở PDP, giỏ, footer ("Join the NOVDAT community") | WELCOME10 ACTIVE từ 02/11, 1 lần/khách, không cộng dồn | **[CẦN KIỂM]** khách nhận mã bằng cách nào |
| Một offer mỗi đơn | Cả BUY2 và WELCOME10 đều `combinesWith = false` | Khớp |
| Size Chart có cột **2XL** | Cả 3 sản phẩm chỉ có biến thể S–XL | Lệch |
| Hoodie/Sweatshirt, Fabric & Care: "Garment-dyed cotton-blend fleece" | Mô tả sản phẩm: "50/50 cotton–poly… 8 oz/yd²" | Lệch: câu chung của template không khớp blank |
| Hoodie, Care trong mô tả: "Tumble dry: medium… Iron… low heat" | Accordion: "Tumble dry low. Do not iron directly on the print." | Lệch |
| "30-Day Guarantee… free reprint or full refund within 30 days" | Refund policy: 30 ngày từ khi nhận, reprint hoặc refund, không nhận đổi vì đổi ý | Khớp |
| Shipping policy | Không ghi $4.99 và ngưỡng $75 | Thiếu thông tin |
| "Printed on demand in the USA" | Chưa đọc được nhà in Printify | [CẦN KIỂM] |
| Judge.me: "No reviews" có trong HTML Cold Miles; CSS ẩn badge khi điểm 0.00; widget review đang tắt | Chưa có review | [CẦN KIỂM] trên điện thoại. Không thấy review giả |

## 3. Phát hiện (xếp theo tác động)

| # | Vị trí | Chữ hiện có (nguyên văn) | Mô hình | Nhãn | Dữ liệu |
|---|---|---|---|---|---|
| 1 | PDP, cụm nút | "Add to cart" + "Buy Now" + nút thanh toán nhanh (JS) | Hick, một CTA chính | Dùng được | [DỮ LIỆU THẬT] có 2 nút chữ; nút thanh toán nhanh [CẦN KIỂM] |
| 2 | PDP Hoodie và Sweatshirt, Fabric & Care | "Garment-dyed cotton-blend fleece for a soft, lived-in feel from day one." | Regret aversion (chữ phải đúng thật) | Dùng được khi sửa cho đúng | [DỮ LIỆU THẬT] lệch với mô tả |
| 3 | PDP Tee, Fabric & Care | "…considered the gold standard in the industry" | Authority không kiểm được | Cấm (xem mục 4) | [DỮ LIỆU THẬT] |
| 4 | Size Chart cả 3 PDP | Cột "2XL" | Giảm rủi ro chọn size | Dùng được khi sửa | [DỮ LIỆU THẬT] |
| 5 | Trust row PDP | "Free shipping over $75" | Zero-price | Dùng được khi sửa chữ | [DỮ LIỆU THẬT] |
| 6 | Giỏ hàng | Không có dòng phí ship hay ngưỡng free ship; chỉ có "Buy 2" | Goal-gradient, giảm rủi ro | Có điều kiện: T5 đã có kết quả (anh xác nhận 05/11) | [ĐỀ XUẤT] |
| 7 | Mobile, cả trang | 1/495 phiên mobile thêm giỏ trong 30 ngày | Theory of Constraints | Dùng được | [CẦN KIỂM] lọc phiên người thật |
| 8 | Toàn store | Không nhắc Welcome 10% | Reciprocity | Dùng được | [CẦN KIỂM] luồng email |
| 9 | Accordion Shipping time | "1–2… · 2–5… · 4 to 8" | Pratfall (thành thật về thời gian) | Dùng được | [DỮ LIỆU THẬT] cộng ra 3–7 |
| 10 | Giỏ trống | "Your cart is empty / Have an account? Log in to check out faster. / Continue shopping" | Peak-end, JTBD | Dùng được | [GIẢ THUYẾT] tác động thấp |

Ưu đãi Buy 2 xuất hiện 3 lần trên PDP (banner sticky có hiệu ứng chạy chữ, dòng dưới giá, giỏ). Chữ đúng thật và không khẩn. Theo dõi trên điện thoại xem banner có chiếm chỗ không (mục 6).

## 5. Đề xuất ([ĐỀ XUẤT] của Claude, anh quyết)

**Q1. Sửa chữ cho khớp thật (chất liệu, size, free ship) — loại B; Q1b là C vì ghi lên LIVE.**
- **A. Sửa câu chung trong theme:** đổi Fabric & Care theo từng loại blank; bỏ cột 2XL; đổi "over $75" thành "$75+". Câu mẫu: *"Midweight 50/50 cotton-poly fleece. Soft, warm, easy to wash."* · *"Free US shipping on orders $75+ (after discounts)."*
- **B. Bỏ câu chung về chất liệu**, để thông tin vải chỉ nằm trong mô tả từng sản phẩm. Câu mẫu: *"See Description for fabric details."* · *"Free US shipping on orders of $75 or more."*
- Chi phí: khoảng 1 giờ, sửa trên theme bản sao rồi publish. Đo: soát lại 3 PDP, hết lệch ở bảng mục 2. Phiếu hỗ trợ hỏi về size và vải [GIẢ THUYẾT].

**Q2. Một CTA chính trên PDP — loại C (LIVE).**
- **A. Ẩn "Buy Now"**, giữ "Add to cart"; nút thanh toán nhanh để ở giỏ. Câu mẫu: *"Add to cart"* · *"Made to order. Delivered in 4 to 8 business days."*
- **B. Giữ Buy Now nhưng hạ thành link chữ** dưới nút chính. Câu mẫu: *"Add to cart"* · *"Or buy it now"*
- Chi phí: khoảng 30 phút. Đo: tỷ lệ thêm giỏ mobile trên 150 phiên người thật (mục tiêu ≥ 3%). Trước thời điểm đó là [GIẢ THUYẾT].

**Q3. Nói rõ phí ship trong giỏ — loại C (LIVE).**
- **A. Dòng tĩnh**, không có thanh tiến độ. Câu mẫu: *"Shipping: flat $4.99 under $75. Free on US orders $75+ (after discounts)."* · *"Ships in 1–2 business days. Delivered in 4 to 8."*
- **B. Dòng goal-gradient** (Có điều kiện: chỉ bật khi số $X trong giỏ khớp checkout, đã tính sau Buy 2). Câu mẫu: *"$18.40 to free US shipping."* · *"Free US shipping unlocked."*
- Chi phí: A khoảng 30 phút; B 2–3 giờ cộng thời gian test trên giỏ có Buy 2. Kèm theo: thêm phí $4.99 và ngưỡng $75 vào Shipping policy. Đo: tỷ lệ từ giỏ tới checkout trên phiên người thật [GIẢ THUYẾT].

## 6. Checklist anh tự kiểm trên điện thoại thật (10 bước)

1. Mở Negative Splits Positive Vibes Hoodie trên Safari iPhone, ẩn danh. Chụp màn hình đầu tiên (chưa cuộn): banner Buy 2 chiếm bao nhiêu chỗ, giá có nằm trong màn đầu không?
2. Cuộn tới cụm nút. Chụp lại: có mấy nút (Add to cart, Buy Now, Shop Pay/Apple Pay)?
3. Có thanh sticky Add to cart khi cuộn không? Nó có che chữ ship hay giao hàng không? Chụp lại.
4. Mở Cold Miles. T-Shirt: dưới tiêu đề có hiện "No reviews" hay ngôi sao trống không? Chụp lại.
5. Mở Size Chart của Tee: cột 2XL có hiện không, trong khi ô chọn size chỉ có S–XL? Chụp lại.
6. Mở Fabric & Care của Cold Miles. Sweatshirt: đọc so với Description. Chụp cả hai.
7. Đợi 30 giây trên PDP: có popup nào hiện (email, review, Judge.me) không? Chụp lại. Nếu có ô tích, ô đó có được tích sẵn không?
8. Mở `/cart` khi giỏ trống: chụp phần chữ và gợi ý sản phẩm.
9. Mở menu cart (biểu tượng giỏ) khi trống: chữ có giống `/cart` không? Chụp lại.
10. Chỉ khi anh muốn thì dùng thiết bị test riêng, không phải phiên đo KPI: thêm 2 món để xem giỏ có hiện "−15%" trước checkout không và có dòng phí ship không. Chụp lại rồi xoá giỏ. Báo tôi biết anh đã làm bước này để loại phiên đó khỏi số liệu.

Gửi lại các ảnh 1, 2, 4, 5, 7 và 10 (nếu làm) để tôi chốt các mục [CẦN KIỂM].

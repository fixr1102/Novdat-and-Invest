# Kittl AI: tính năng hỗ trợ làm ảnh/video quảng cáo và cách dùng hiệu quả nhất cho NOVDAT

Ngày 05/11/2026 · Claude khảo sát bằng công cụ Kittl (chỉ đọc danh mục, **chưa tạo ảnh/video nào, chưa tốn token**). Tất cả là [ĐỀ XUẤT], anh quyết.

## 1. Kết luận ngắn

1. Kittl có sẵn **126 workflow** (công thức tạo ảnh/video có sẵn). Nhóm hợp với NOVDAT nhất: **ảnh người mẫu mặc áo** (Styled model photoshoot, Product listing – fashion & apparel, Fisheye apparel scene) và **video UGC** (Spotted in the wild, Casual apparel try-on).
2. **Cả 3 workflow ảnh và video đều nhận "avatar tuỳ chỉnh"**: anh tải ảnh David hoặc Hanna lên là dùng được. Vậy hai nhân vật của chúng ta dùng được trong template.
3. Workflow dùng chính **GPT Image 2** (giống model tôi đang gọi trực tiếp, cùng giá 20 token/ảnh). Khác biệt: workflow có sẵn cảnh, dáng, ánh sáng đã thử; gọi trực tiếp thì tôi kiểm soát từng chi tiết và giữ được một "series" thống nhất.
4. **Video UGC qua workflow chỉ 80 token** (cơ bản), rẻ hơn nhiều so với 420 token cho video 12 giây tôi tự gọi. Đáng thử.
5. **Khuyến nghị:** dùng workflow để **thử nhanh nhiều phong cách** (rẻ, có sẵn), chọn 1 phong cách thắng, rồi **tự dựng series** cho 11 thẻ bằng công thức đã chốt, có David/Hanna. Đừng chạy cả 11 thẻ bằng workflow ngay.

## 2. Nơi chứa design (anh hỏi "đã có thông tin chưa")

| Thứ | Có ở đâu | Tôi đã có? |
|---|---|---|
| Ảnh sản phẩm từng màu: **Front** (mặt trước, nền sạch), **Flat Lay**, **On Model Nam/Nữ** (mỗi sản phẩm 16 ảnh, 2048 px) | Shopify (Media của sản phẩm) | **Có**, đọc được link từng ảnh |
| File in gốc (PNG nền trong suốt của từng design) | Chưa thấy | **Chưa có** |
| Kittl: thư mục tải lên "In Motion - Mockup Hoodie", thư mục dự án "Running - Bộ 1" | Kittl | Đều **trống** (0 file) |
| Ảnh David/Hanna | Kittl, thư mục "David - Character" / "Hanna - Character" + ảnh thử 05/11 | Có |

**Hệ quả:** các workflow ghi "Works with product images only, not designs" chạy được ngay bằng ảnh **Front** từ Shopify. Các workflow cần "design" (Lifestyle apparel mockup, Editorial-style apparel mockup) và mockup template của Kittl cần **file in gốc**: anh cho tôi biết file nằm ở đâu (Printify, Google Drive, Hub?).

## 3. Workflow ảnh đáng dùng

Chi phí là "cơ bản" theo API; số trên giao diện Kittl của anh có thể khác (anh thấy Winter = 40, Fisheye = 12): **tin số trên giao diện**.

| Workflow | Làm gì | Đầu vào | Avatar tự chọn | Cơ bản | Hợp NOVDAT? |
|---|---|---|---|---|---|
| **Styled model photoshoot** | Ảnh chiến dịch 1 người mẫu; 6 dáng (đang bước, nhìn qua vai, nhìn lên…) và 9 phong cách | Ảnh áo (product) | Có (5 sẵn + tải lên) | 20 | **Cao**: dáng "Mid-stride", phong cách "Minimal studio" hợp giọng NOVDAT. Các phong cách khác (hoa khổng lồ, 3D, nhí nhố) **không hợp** |
| **Product listing – fashion & apparel** | Bộ ảnh theo kiểu chụp: Hero, Back View, Model Front/Back, Hand Held, Texture Macro, On Body Detail; 5 phong cách nền; tỉ lệ 1:1 / 3:4 / 9:16 | Ảnh áo | Có (8 sẵn + tải lên) | 20 | **Cao**, kể cả cho trang sản phẩm (ảnh cận chữ in, cận vải) |
| **Fisheye apparel scene** | Ảnh Y2K, mắt cá, 5 cảnh (phố góc thấp, tường graffiti, công viên trượt ván…) | Ảnh áo | Có (5 sẵn + tải lên) | 20 | **Vừa**: gây chú ý nhưng ồn ào hơn giọng NOVDAT; dùng làm 1–2 ảnh "ngắt cuộn" |
| **Lifestyle apparel mockup** | Ảnh đời thường **không lộ mặt**; 5 cảnh (đi dạo khu phố, cầm cà phê, selfie…) | **File in gốc** + loại áo + màu | Mô tả bằng chữ | 20 | **Vừa**: không lộ mặt thì không lo "mặt AI". Nhưng chỉ có Tee/Sweatshirt/Tank (không Hoodie) và bảng màu hạn chế (không có Sand/Charcoal) |
| **Fall apparel mockup** | Áo trong cảnh mùa thu ấm | Design | — | — | **Vừa**: hợp mùa, cần file in gốc |
| **Winter product scene** (cái anh thử) | Ảnh áo treo/để trong cảnh tuyết; 5 cảnh (Fresh snow, Pine nest, Winter woods, Snow diorama, Slope side) | Ảnh áo | Không người | 20 (anh thấy 40) | **Thấp cho chạy bộ** (cảnh trượt tuyết lệch nhánh); **vừa** cho Noel hoặc *Cold Miles* |
| **Seasonal product ad**, **Black Friday & Cyber Monday ad**, **Product promo ad** | Quảng cáo có sẵn bố cục, chữ | Ảnh áo | Không | — | **Cẩn thận**: AI hay vẽ sai chữ; chữ nên thêm lúc đăng trên Meta, không vẽ trong ảnh. BFCM chỉ dùng ưu đãi thật (Buy 2 save 15%), không đồng hồ đếm ngược |
| **Product in hand scene**, **Shopping product scene** | Áo trong tay, cảnh mua sắm | Ảnh áo | Không | — | Thấp |

## 4. Workflow video UGC

| Workflow | Làm gì | Thời lượng | Avatar tự chọn | Cơ bản | Hợp NOVDAT? |
|---|---|---|---|---|---|
| **Spotted in the wild** | Video kiểu "bị quay lén ngoài phố", tay cầm, 9:16; nền Street / Subway / Shop / Bus / Airport / Restaurant | cố định | Có (5 sẵn + tải lên) | **80** | **Cao**: đúng kiểu hook "người lạ quay" như video tham khảo |
| **Casual apparel try-on** | Người giới thiệu áo ở cảnh đời thường (phòng, phố) | cố định | Có | **80** | **Vừa**: kiểu "thử áo", hợp trang sản phẩm |
| **Subject follow** | Máy bám theo người, kiểu creator | 8 / 10 / 12 giây | Có | **80** | **Thấp**: chỉ có 3 cảnh (bãi biển, siêu thị, vườn hoàng hôn) |
| **Outfit transition**, **Product reveal**, **Outfit scene switch**, **Photo collage video**, **Wide-angle product ad** | Chuyển cảnh, lộ sản phẩm, ghép ảnh | — | tuỳ | — | **Vừa**: thử sau, khi đã có 1 video đạt |

Lưu ý: nhiều workflow video có nhãn **"freeugcvideoeligible"** (có thể miễn phí theo gói). Tôi không xác minh được, anh xem trên giao diện Kittl có hiện "Free" không.

## 5. Brand Kit NOVDAT (đã có trên Kittl)

Anh đã tạo Brand Kit **NOVDAT** (đủ logo, bảng màu #2A1F1A, #F0E1D2, #6E6053, #B5755D, font Playfair Display + Archivo, và ghi chú phong cách: "streetwear editorial yên tĩnh, ánh sáng ban ngày, mờ vải thật, không flash gắt, không kiểu phòng gym bóng bẩy").

- Khi chạy workflow, **bật "Apply your brand"** (cả hai ảnh anh gửi đều đã bật): giữ phong cách nhất quán.
- **Xung đột cần anh biết:** Brand Kit ghi "không flash gắt", mà phong cách **B1 (flash đêm)** anh đã chấm "ổn" dùng flash. Đề xuất: B1 chỉ dùng cho 1–2 ảnh "ngắt cuộn", phần còn lại theo ánh sáng ban ngày.

## 6. So sánh 3 cách làm 11 thẻ ảnh quảng cáo

| Cách | Ưu | Nhược | Token (ước) |
|---|---|---|---|
| **A. Giữ ảnh On Model của Printify** (đang dùng) | 100% đúng sản phẩm, 0 token | Trông như ảnh mockup/catalog, ít khác biệt, khó "dừng cuộn" | 0 |
| **B. Workflow Kittl với avatar David/Hanna** | Nhanh, có sẵn cảnh và dáng, bật Brand Kit | Phong cách theo mẫu có sẵn, khó giữ series; phải kiểm chữ in từng ảnh | ~20/ảnh, 11 thẻ ≈ 220 (+ làm lại) |
| **C. Tự dựng series (GPT Image 2.5 trực tiếp)** | Kiểm soát cao, đồng nhất, đã chạy thử A/B trong phiên này | Tốn thời gian prompt; phải kiểm chữ in từng ảnh | ~20/ảnh, 11 thẻ ≈ 220 (+ làm lại) |

## 7. Khuyến nghị cách dùng hiệu quả nhất

1. **Thử 4 mẫu trên 1 sản phẩm** (*Tired. Went Anyway.* Hoodie Charcoal, ảnh Front từ Shopify, David làm avatar tuỳ chỉnh), khoảng **80–100 token**:
   - T1 Styled model photoshoot (Mid-stride + Minimal studio).
   - T2 Product listing – fashion & apparel (Model Front + Hand Held + Texture Macro).
   - T3 Fisheye apparel scene (City Low Angle) làm ảnh "ngắt cuộn".
   - T4 tự dựng (công thức B2 đã có).
   Anh chấm 4 mẫu, chọn 1–2 phong cách thắng.
2. **Video:** thử **Spotted in the wild** (80 token) với Hanna làm avatar tuỳ chỉnh, nền Street, dùng ảnh Front của *Not Fast. Still Out Here.* Hoodie White. So với video 12 giây tự gọi (420 token). Nếu đạt thì dùng workflow cho cả video David.
3. **Luật kiểm trước khi dùng cho quảng cáo** (mọi ảnh/video):
   - Chữ in đúng 100% và đọc được (kiểm bản gốc, không kiểm bản xem trước 384 px).
   - Màu áo và logo tay áo trái đúng.
   - Bối cảnh không có chữ lạ.
   - Gắn nhãn "Visuals created with AI."
   - Không để AI vẽ chữ quảng cáo; chữ thêm khi đăng.
4. **Tiến độ gợi ý:** 06/11 thử mẫu ảnh + video thử; chốt phong cách; 07/11 làm 11 thẻ + video 2 (David); anh duyệt trước khi đăng.

## 7b. Kết quả chạy thử 4 mẫu ảnh (05/11, Founder duyệt)

Sản phẩm thử: *Tired. Went Anyway.* Hoodie **Charcoal**, ảnh gốc là ảnh **Front** từ Shopify, David làm avatar tuỳ chỉnh, bật Brand Kit NOVDAT. Ảnh xem trước chỉ 384 px, nên các nhận xét về chữ in là **[CẦN KIỂM]** trên bản gốc.

| Mẫu | Ảnh | Nhận xét của Claude |
|---|---|---|
| **T1** Styled model photoshoot (Mid-stride, Minimal studio) | [xem](https://www.kittl.com/ai-studio/image-generator?microEdit=cmw3ik5x700mw0iri5i76nr4j) | Nền studio sáng, trông như catalog. **Chữ in có vẻ bị méo** ("WENT ANYWAY." đọc như "WENT ANFWAL" ở bản xem trước). Quần dài, không hợp "người chạy". **Loại.** |
| **T2a** Product listing, Model Front (Directional light) | [xem](https://www.kittl.com/ai-studio/image-generator?microEdit=cmw3ikgrz00jt0ips6ij5qqxc) | **Tốt nhất trong workflow.** Ánh sáng nghiêng ấm, chữ in đọc đúng, logo tay áo trái thấy rõ, vải mờ tự nhiên. Tay đút túi, khá "dáng mẫu" |
| **T2b** Product listing, Texture Macro | [xem](https://www.kittl.com/ai-studio/image-generator?microEdit=cmw3ikef000my0iri9pfrk0md) | **Rất hợp làm ảnh thứ 2 của carousel**: cận chữ in và vải, chữ đúng |
| **T3** Fisheye (City Low Angle) | [xem](https://www.kittl.com/ai-studio/image-generator?microEdit=cmw3ijqdr00mt0iri0x3sa6r1) | Gây chú ý nhất, nhưng **trông "AI" rõ** (góc từ dưới lên, tay sát ống kính, nhà chọc trời). Chữ in nhỏ. Chỉ nên dùng nếu cần 1 ảnh "ngắt cuộn" |
| **T4** Tự dựng (GPT Image 2.5, Brand Kit, phố gạch nâu) | [xem](https://www.kittl.com/ai-studio/image-generator?microEdit=cmw3ijaaz000000ildmvg769q) | **Tự nhiên nhất**, giống ảnh bạn chụp: ánh sáng ngày, túi gym, khung hơi lệch. Chữ in đọc đúng, logo tay áo trái đúng bên |

**Xếp hạng (Claude):** T4 ≈ T2a > T2b (ảnh phụ) > T3 (ảnh ngắt cuộn, tuỳ chọn) > T1 (loại).

**Chi phí thật:** số dư Kittl giảm **450 token** trong lượt này (từ ~6.770 xuống 6.320), **nhiều hơn dự tính ~100**. Tôi chưa tách được workflow nào tốn bao nhiêu; công cụ không trả số token từng lần chạy. Nghi ngờ: workflow có Brand Kit tốn hơn giá cơ bản, hoặc job video lỗi trước đó bị trừ muộn. **Anh xem lịch sử token trong Kittl để chắc.** Từ giờ tôi đo số dư trước và sau **từng** lần chạy.

## 8. Cần anh chốt

1. Cho tôi chạy **thử 4 mẫu ảnh + 1 video thử (khoảng 180 token)** như mục 7 không?
2. File in gốc (PNG trong suốt) của 11 design nằm ở đâu? (Không bắt buộc cho bước thử.)
3. Giữ B1 flash cho 1–2 ảnh "ngắt cuộn" hay bỏ hẳn theo Brand Kit?

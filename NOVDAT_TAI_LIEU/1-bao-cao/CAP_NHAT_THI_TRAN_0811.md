# Cập nhật Thị trấn 08/11/2026: đối chiếu file 7 mục của Founder với hiện trạng thật

Nguồn: [file 7 mục của Founder](NOVDAT_THI_TRAN_7_MUC_TONG_HOP_2026-11-08.md) (do Muse tổng hợp). Claude kiểm lại bằng Shopify (chỉ đọc), Meta/Adspirer (chỉ đọc), Thị trấn và kho tài liệu. **Mọi quyết định giá, ưu đãi, đăng quảng cáo, publish là của Founder.**

## 1. Bảng đối chiếu 7 mục

| Mục | Founder báo | Claude kiểm | Đã cập nhật |
|---|---|---|---|
| 24 Theme DEV | Tạm ổn; còn sửa Buy Now bỏ "→", chưa publish | DEV vẫn là bản nháp, LIVE (`LIVE - Working 17/10`) chưa bị đụng | **Đã bỏ mũi tên → trên DEV** (đo lại: Buy Now và Add to cart cùng 52 px, cùng bo góc). Thẻ vẫn "Chờ anh" publish |
| 14 Campaign Meta | "Chưa làm được: thiếu prompt và '6 thay đổi cũ'" | Cả hai **đã có sẵn** (xem mục 2.2). Không đọc được số Meta vì kết nối hết hạn (mục 2.1) | Ghi giải đáp vào thẻ. Chưa đổi trạng thái vì còn một mâu thuẫn (mục 2.3) |
| 12 Video Hanna + David | Xong, tạm ổn | Thị trấn ghi 75% | **Đã chuyển Xong** (theo anh). Việc tiếp: ghép chữ hook và nhạc, thêm vào ad set |
| 21 Klaviyo | Chữ duyệt, sender Active; còn 2 quyết định | **Mã WELCOME10 đã tồn tại và đang bật** (mục 3) | Ghi vào thẻ, chuyển "Chờ anh"; đề xuất phương án A |
| 22 Tặng 6 hoodie | Tạm dừng 1–2 tháng | Đơn tặng chưa phát sinh | **Đã ghi tạm dừng** (hạn xem lại 07/01/2027), bỏ khỏi danh sách quá hạn |
| 40 Duyệt kế hoạch Organic | Anh duyệt sau 9h sáng 08/11 | Thị trấn đã ghi **"Duyệt" xong lúc 14:02 05/11 (giờ VN), bởi anh** (`t-org-plan`) | Chưa đổi; hỏi anh xác nhận |
| 30 Noel → Black Friday | Chuyển sang Black Friday, 3 câu hỏi | Chưa có giảm 20% nào trên store (mục 4) | Đổi tên thẻ, ghi dữ kiện và biên lợi nhuận |

## 2. Những chỗ không khớp, cần anh biết

1. **Kết nối Meta của Adspirer đã hết hạn.** Meta trả lỗi `OAuthException 190/460`: "phiên bị vô hiệu vì đổi mật khẩu hoặc Meta thay đổi phiên bảo mật". Hậu quả: 4 lần kiểm tự động chỉ-đọc (10/11, 11/11, 12/11, 15/11) sẽ **không đọc được số** nếu chưa kết nối lại. Cách sửa: claude.ai → Cài đặt → Connectors → Adspirer → kết nối lại Meta (anh làm; Claude không đăng nhập thay).
2. **Giải đáp cho Muse (mục 14):**
   - **Prompt campaign:** [PROMPT_CLAUDE_CHROME_META_DRAFT_0811.md](../2-huong-dan-cho-anh/PROMPT_CLAUDE_CHROME_META_DRAFT_0811.md); hướng dẫn 7 bước: [META_CAMPAIGN_SETUP_TEST_08-14-11.md](../2-huong-dan-cho-anh/META_CAMPAIGN_SETUP_TEST_08-14-11.md).
   - **"6 thay đổi cũ"** = 6 thay đổi **chưa đăng** đang nằm trong Ads Manager (nút "Xem lại và đăng (6)"), trong đó "Chiến dịch Lượt tương tác…" có ghi "Điều chỉnh sửa chưa đăng". Khi đăng campaign mới, hộp "Xem lại và đăng" gom cả 6 thay đổi này; anh **bỏ chọn** chúng.
3. **Mâu thuẫn trạng thái campaign:** việc `t-ads-build` (Dựng campaign Meta) được anh bấm **Xong lúc 08:36 ngày 06/11**, nhưng file 7 mục nói mục 14 chưa làm, và thẻ Tiến độ 14 vẫn 0%. Cần anh xác nhận campaign **đã đăng hay chưa** (hôm nay là ngày bắt đầu test).
4. **Ảnh cho test:** việc `t-ads-images` (03/11) ghi dùng **ảnh người mẫu Printify**, còn từ 05/11 chúng ta làm ảnh Kittl (mới xong 2/11 thẻ). Bản prompt Chrome đang dùng 11 ảnh Printify. Cần chốt dùng gì cho test hôm nay.
5. **Báo cáo Creative Trend Lab (05/11) không có trong kho:** thẻ `q-ctl-20261105` trỏ tới `CREATIVE_TREND_LAB_2026-11-05.md` nhưng file chưa được đẩy lên GitHub (kho chỉ có commit của phiên này). Tóm tắt trong thẻ vẫn đọc được. Có thể chạy lại nếu anh cần bản đầy đủ.
6. **Việc cloud "Xử lý việc từ Thị trấn"** (thẻ `job-e3-…`) báo không mở được `VIDEO_SPEC_TEST_0811.md` vì **không có quyền vào kho GitHub**. Nên cấp quyền kho cho việc đó nếu muốn nó đọc tài liệu.

## 3. Mã giảm giá và dữ kiện Shopify (đọc 08/11)

| Giảm giá | Trạng thái | Chi tiết |
|---|---|---|
| **Buy 2, save 15%** (tự động) | **Đang bật** từ 17/10 | 15% cả đơn, tối thiểu 2 sản phẩm, không cộng dồn |
| **WELCOME10** (mã) | **Đang bật** từ 02/11 | 10% cả đơn, 1 lần/khách, không cộng dồn; đã dùng 0 lần |
| Miễn phí ship (tự động) | Đang bật | Từ $75 (sau giảm giá) |
| BUY2-15, FB-EMAIL-… | Hết hạn (test cũ) | Không còn ảnh hưởng |
| **Giảm 20%** | **Không tồn tại** | Chưa có mã hay giảm giá tự động nào 20% |

Muse ghi "store chỉ có BUY2-15 (15% đơn đầu, 10% giỏ 2+)": **không đúng** với store hiện tại.

**Số liệu thật 08/11:** 0 đơn từ người lạ (store chỉ có đơn thử #1001, #1002 tháng 9). 7 ngày qua: 72 phiên; 2 phiên thêm giỏ (05/11 và 07/11); 1 phiên vào checkout (05/11); 0 hoàn tất. Khớp số của Muse (07/11: 11 phiên, 1 thêm giỏ, 0 đơn). Chi tiêu quảng cáo: chưa đọc được (mục 2.1).

## 4. Black Friday: dữ kiện để anh quyết 3 câu hỏi

**Biên lợi nhuận mỗi sản phẩm** (giá và giá vốn đọc từ Shopify; phí thanh toán ước 2,9% + $0,30 là **[GIẢ THUYẾT]**; chưa tính ship và logo tay áo):

| Sản phẩm | Giá | Giá vốn | Lãi sau phí: giá gốc | Giảm 15% | Giảm 20% |
|---|---|---|---|---|---|
| Hoodie | $46,60 | $28,00 | $16,95 | $10,16 | **$7,90** |
| Sweatshirt | $33,90 | $24,06 | $8,56 | $3,61 | **$1,97** |
| T-Shirt | $26,60 | $13,04 | $12,49 | $8,61 | **$7,32** |

Hệ quả:
- Giảm 20% làm Sweatshirt gần như **hết lãi ($1,97)**, Hoodie còn $7,90. Con số hoà vốn $17,53 trong One Plan khớp với $16,95 ở giá gốc.
- Chạy quảng cáo trả phí gần như **chắc chắn lỗ** (CPC $2–4,88 và tỉ lệ ra đơn khoảng 1,4% cho CPA vài trăm đô, so với lãi vài đô). One Plan chỉ cho chạy ads BFCM khi CPA ≤ $35. Mục tiêu 1–5 đơn là "mua dữ liệu", đúng tinh thần One Plan; nhưng nên đặt trần lỗ trước.
- **[CẦN KIỂM]** giá vốn $28 của Hoodie đã gồm logo tay áo (+~$6) chưa? Nếu chưa, lãi mỗi Hoodie thấp hơn khoảng $6.

**Đề xuất của Claude** (anh quyết):
1. **20% thật chưa?** Chưa có. Muốn dùng "up to 20%" thì phải có sản phẩm thật sự được giảm 20%. Đề xuất: giảm 20% cho **Hoodie và T-Shirt**, **không** áp cho Sweatshirt (giữ Buy 2 save 15% hoặc 10%). Ghi trên quảng cáo "up to 20% off" là đúng sự thật. Tạo ưu đãi này là việc ghi lên LIVE: cần anh "OK apply".
2. **Ngày sale:** kế hoạch One Plan là **27/11 đến 30/11** (Black Friday đến Cyber Monday) như một đợt 4 ngày, mỗi đơn một ưu đãi. Đề xuất giữ nguyên, không kéo dài.
3. **Style ảnh:** Brand Kit NOVDAT ghi "quiet urban minimalism, không neon, không hào nhoáng". Đề xuất style trầm ("Ribbon drape" hoặc "Crossing tape") thay cho "Foil balloon". Tôi chưa xem ảnh mẫu của 3 style; anh gửi ảnh nếu muốn tôi so.

Luật Honest Commerce giữ nguyên: không đồng hồ đếm ngược, không khan hiếm giả, không giá gốc giả; chỉ ghi ngày sale thật. Chữ quảng cáo trên Meta: tránh "you/your", tránh "limited"; chữ "% off" cần anh duyệt (loại B).

## 5. Klaviyo (mục 21): đề xuất

- **Mã Welcome: chọn A** (mã riêng WELCOME10, giữ nguyên chữ email đã duyệt). Lý do: mã **đã có và đã bật**, không phải làm thêm; phương án B (dùng mã mua-2) buộc sửa chữ đã duyệt. Email ghi rõ "không cộng với ưu đãi khác".
- **Welcome #2 sau 48 giờ:** hợp lý cho chuỗi 2 email; anh quyết.
- Dựng 2 flow: làm theo [hướng dẫn Klaviyo](../2-huong-dan-cho-anh/KLAVIYO_SETUP_0711.md). Connector Klaviyo không nối được vào phiên này (lỗi mạng 403), nên anh dựng tay; flow bỏ giỏ nên làm **trước** vì nó cứu khách từ quảng cáo.

## 6. Đội Marketing trong Thị trấn (spec 6 bước của Muse, 07/11)

Spec đầy đủ (`NOVDAT_THI_TRAN_MARKETING_TEAM_SPEC_2026-11-07.md`) **chưa có trong kho**; Claude chỉ có bản tóm tắt 6 bước. Đối chiếu với 6 vai đã duyệt 05/11:

| Bước của Muse | Vai tương ứng đã có | Khoảng trống |
|---|---|---|
| Nhận ý tưởng | Trinh sát (m1) + Hook Lab | — |
| Kiểm tra hợp thị trường và phong cách NOVDAT | Gác cổng chữ + Brand Kit NOVDAT | — |
| Tạo video qua Kittl Seedance 2.5 | Xưởng | **Chi phí:** Seedance 2.5 đầy đủ là 80 token/giây (video 8 giây = 640), gấp hơn 2 lần Seedance 2.0 (35/giây = 280). Bản 2.5 480p là 35/giây. Nên dùng 2.0 hoặc 2.5 480p để thử |
| Edit video | (chưa có) | **Chưa có vai edit.** Hiện anh ghép chữ và nhạc bằng CapCut |
| Báo cáo | Chánh văn phòng | — |
| Duyệt, rồi đội sản xuất design mới | Anh duyệt | **Chưa có "đội sản xuất design mới"** |

Cần anh gửi file spec để Claude làm đúng, và chọn giờ nhắc (9:30 hay 15:30).

## 7. Việc chờ anh (đã gom vào một thẻ Thị trấn `q32`)

1. Kết nối lại Meta trong Adspirer.
2. Campaign test đã đăng chưa? Ảnh dùng cho test hôm nay: Printify (có ngay) hay chờ Kittl (còn 9 thẻ, ~180 token)?
3. Klaviyo: chọn A hay B; Welcome #2 48 giờ?
4. Black Friday: 3 câu hỏi ở mục 4.
5. Video UGC: gửi 3 hook Muse đề xuất (hoặc chọn từ báo cáo Creative Trend Lab); gửi bản copy "New: In Motion" vòng 3.
6. Gửi spec Đội Marketing; chọn giờ nhắc.
7. Mục 40: anh có nhớ đã bấm Duyệt ngày 05/11 không?
8. Mục 22: tạm dừng (đã ghi).

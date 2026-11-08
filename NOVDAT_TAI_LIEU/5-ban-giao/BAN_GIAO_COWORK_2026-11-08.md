# NOVDAT: bàn giao phiên Claude Code cloud sang phiên Cowork mới (08/11/2026)

Người viết: Claude (phiên Claude Code cloud, nhánh `claude/tender-pasteur-qu3u12`). Người nhận: phiên Cowork mới trên tài khoản của Founder. Đọc hết file này trước khi làm gì. Chỗ nào ghi **[CẦN KIỂM]** là chưa xác minh, không được coi là sự thật.

## 0. Cách làm việc với Founder

- Founder: Nguyễn Đạt, cửa hàng novdat.com (Shopify + Printify, thị trường Mỹ). Trả lời **tiếng Việt, ngắn gọn, từng bước**. Phần nào chưa rõ thì **hỏi lại, không tự nghĩ ra điều mới**.
- Founder là người duyệt duy nhất. Báo cáo thẳng sự thật, kể cả lỗi của mình. Số liệu phải có nguồn; điều chưa kiểm ghi **[CẦN KIỂM]**.
- Ảnh mới tạo: gửi thẳng vào chat (SendUserFile) **và** ghi lên Thị trấn. Khung xem ảnh của Kittl không hiện trong Claude Code.
- Mục tiêu: **5 đơn từ người lạ trước 30/11**, 20 trước 15/12, 50 trước 31/12. Hiện: **0 đơn người lạ** (chỉ có 2 đơn thử #1001, #1002 tháng 9).

## 1. Luật cứng (từ Founder, không đổi)

1. Chỉ Founder publish trên Printify. Không in token Printify ra.
2. Honest Commerce: không đếm ngược, khan hiếm giả, giá gốc giả.
3. **Ghi lên LIVE (giá, giảm giá, ưu đãi) chỉ khi Founder gõ "OK apply".**
4. Claude Code cloud không gỡ xuất bản, không sửa Admin ngoài việc đã duyệt.
5. Kittl: tạo ảnh **chỉ khi Founder duyệt**, tối đa **2 ảnh mỗi lô**. Video chỉ khi có Phiếu đã duyệt. Cập nhật 08/11: Founder đã gia hạn Premium nên **được dùng mockup Gildan 18500 (hoodie) và 18000 (sweatshirt) Premium**, nhưng **không dùng tính năng mới và không tự tạo video**.
6. **Mockup nữ (Hanna) chỉ cho 3 thiết kế: Five More Minutes, Cold Miles, Still Running.** Ngoại lệ Founder duyệt: video Not Fast dùng bản Hanna nói vào máy. Các thiết kế khác dùng David hoặc không người.
7. Chữ quảng cáo: không "you/your", không đoán trạng thái người xem, nhãn AI "Visuals created with AI." khi có người mẫu AI, không logo hãng khác, không nhân vật hay đội thể thao, tránh "limited".
8. Thân dưới người mẫu được đa dạng (quần dài, jogger, track nylon, short), nhưng **không sọc, không logo hãng khác**; áo NOVDAT là điểm nhấn.

## 2. Nguồn dữ liệu

- **Thị trấn NOVDAT** (artifact, kho dữ liệu việc): https://claude.ai/artifact/Wi91G6GU3sfB3dWaGCTk6C. Bộ sưu tập: `tasks`, `queue`, `progress`, `reports`, `config`, `runs`, `studio`, `goals`. Chỉ chủ ghi được. Đọc/ghi bằng ArtifactData (ghim `if_version` khi sửa).
- **GitHub** `fixr1102/Novdat-and-Invest`:
  - Nhánh `claude/tender-pasteur-qu3u12`: nhánh phiên này (đã gồm toàn bộ nội dung của `claude/eager-sagan-t943vz` đến lúc rẽ nhánh).
  - Thư mục `NOVDAT_TAI_LIEU/`: `README.md` (mục lục), `0-NHAT_KY_PHIEN.md` (nhật ký, đọc mục mới nhất trước), `1-bao-cao/`, `2-huong-dan-cho-anh/`, `3-creative/`, `4-doi-agent/`, `5-ban-giao/` (file này).
  - File chính cần đọc: `2-huong-dan-cho-anh/META_CAMPAIGN_INMOTION_0911.md` (campaign 09/11), `4-doi-agent/DOI_MARKETING_QUY_TRINH_0811.md` (quy trình 7 bước), `1-bao-cao/CAP_NHAT_THI_TRAN_0811.md` (đối chiếu Shopify, biên lợi nhuận, Klaviyo).
- File `claude/NOVDAT_HANDOFF_2026-11-08.md` trong Project "StartUp POD NOVDAT" mà Founder nhắc: **không tìm thấy trong repo** (có thể chỉ nằm trong Project). Nếu đọc được Project thì đọc thêm; không thì hỏi Founder.
- Phiên Cowork có thể đọc được thư mục máy Founder `C:\Users\DAT\Desktop\Plan with CLAUDE\DesignForNOVDAT` (file thiết kế PNG của 11 mẫu): nếu đọc được thì kiểm đủ 11 file; phiên cloud không đọc được.

## 3. Hiện trạng cửa hàng (đọc Shopify 08/11)

- Store: novdat.com (Shopify `me42tg-sm.myshopify.com`), gói Basic, USD.
- Giảm giá đang có:
  - "Buy 2, save 15%" (tự động, đang bật từ 17/10): 15% khi mua ≥2 sản phẩm, không cộng dồn.
  - **WELCOME10** (mã, đang bật từ 02/11): 10%, 1 lần mỗi khách, 0 lượt dùng.
  - Free ship từ $75 (phí ship $4,99 dưới $75).
- **Black Friday (đã tạo 08/11, theo "OK apply" của Founder), trạng thái Lên lịch:** "Black Friday 20% - Hoodies & T-Shirts (27-30 Nov)", id `gid://shopify/DiscountAutomaticNode/1504271433826`, 20% tự động cho collection **Hoodie (301932085346) và Tee (301932052578)**, từ 2026-11-27T05:00Z đến 2026-12-01T04:59Z (27/11 00:00 → 30/11 23:59 ET), **không cộng dồn**, **Sweatshirt không giảm 20%**. Quảng cáo ghi "up to 20% off" là đúng sự thật.
- Giá: T-Shirt $26,60 · Hoodie $46,60 · Sweatshirt $33,90.
- **Giá vốn lệch giữa hai nguồn [CẦN KIỂM]:** Shopify ghi Hoodie $24,36, Tee $11,70, Sweatshirt $18,70; báo cáo 08/11 dùng $28 / $13,04 / $24,06. Chưa rõ số nào đúng và giá vốn đã gồm logo tay áo (+~$6) chưa. Phí thanh toán 2,9% + $0,30 là giả thuyết. Đừng dùng biên lợi nhuận cho đến khi Founder xác nhận.
- Collection In Motion: 50 sản phẩm (handle dạng `five-more-minutes-then-miles-sweatshirt`, `uphill-slowly-hoodie`...). Biến thể trong quảng cáo đã kiểm 08/11: 11 biến thể (13 link) còn bán, Active, đúng màu, size M, đúng giá.
- Theme DEV có 3 mục PDP chờ Founder duyệt rồi publish: Q1 (chữ thật: vải 50/50, bỏ cột 2XL, ship), Q2 (một CTA chính), Q3 (dòng phí ship trong giỏ). **Chưa publish**: quảng cáo sẽ vào trang LIVE chưa sửa.

## 4. Campaign Meta test (việc gấp nhất)

- Kết quả: **campaign CHƯA đăng**. Founder tự dựng và tự bấm đăng trong Ads Manager theo `META_CAMPAIGN_INMOTION_0911.md`. Giờ bắt đầu: **00:00 giờ New York ngày 09/11 (= 12:00 trưa 09/11 giờ VN)**; Meta duyệt quảng cáo có thể mất tới 24 giờ nên có thể chạy trễ vài giờ.
- Cấu trúc: tài khoản **podnew** (2676789139407166), Sales, 1 ad set, tối ưu Purchase, Mỹ 25–45, bỏ Audience Network, manual placements. Tên: `NOVDAT_TEST_InMotion_0911_Sales`, UTM `test_inmotion_0911`. **Tắt toàn bộ Advantage+ creative enhancements.** Campaign cũ R1 đã OFF; khi đăng phải bỏ chọn "6 thay đổi cũ" chưa đăng.
- Ngân sách: nấc 1 **$50/ngày 09–12/11**; **11/11 (~$150 đã chi) mà 0 thêm giỏ thì dừng hẳn**; 12/11 tối: ≥1 thêm giỏ hoặc link CTR ≥1% và CPC ≤$1,5 thì nấc 2 (13–15/11, tối đa $115); **trần tổng $315**.
- 5 quảng cáo: 3 băng chuyền ảnh (11 thẻ) + 2 video. Chữ, tiêu đề, link đúng màu nằm trong hướng dẫn. Pixel "pod": Founder khẳng định đang hoạt động; công cụ Adspirer đọc ra 0 pixel (**[CẦN KIỂM]**).
- 11 ảnh Kittl (upload id): 1.1 Five More (Hanna) `cmw7qai2k000100ilgrsoq0r2` · 1.2 Tired (David) `cmw7qadwh000000iloflrb5qg` · 1.3 First Light `cmw3izz8e000000ilma8670vh` · 1.4 Running to Think Less `cmw7qcdib000000ila9vxhnoe` · 2.1 Uphill tuyết (hoodie, không người) `cmw3hbydb00120iriyhsfz6za` · 2.2 Not Fast `cmw7qcgtw000100ilq0yb7nba` · 2.3 Proudly Mid-Pack `cmw7qdvmg000000ilupsn3pm4` · 2.4 Still Running (Hanna) `cmw7r4gq0000100ilq0yb7nba` · 3.1 Cold Miles (Hanna) `cmw7r4dsq000000ilqcrw8zfs` · 3.2 Carb-Loaded `cmw7qfyzt000100ilvbfk2bd5` · 3.3 Run Now `cmw7qhs9v000000ilvu2rfabl`. **[CẦN KIỂM]** chữ nhỏ trên bản gốc của 4 ảnh (Five More, Still Running, Cold Miles, Run Now); Founder chưa xác nhận đã xem bản gốc.
- 2 video: `Uphill.mp4` và `Not fast.mp4` (Hanna nói vào máy), Founder giữ bản gốc, **không thêm chữ hook**, tự ghép nhạc bằng CapCut hoặc kho nhạc Meta (chỉ nhạc có quyền thương mại).
- Kết nối Meta của Adspirer đã nối lại; hạn mức đọc 15 lượt/tháng, đã dùng 5 (08/11).
- 4 lần đọc số tự động (chỉ đọc, qua lịch cloud), đã dời: 11/11 01:30Z (`trig_01PKoZNNK6JFML8Au3YiESiQ`), 12/11 06:30Z (`trig_01ETdjyvzadM33uE9eX5oMnL`), 13/11 06:30Z (`trig_01XicGuwmz1Fjct5Ciqj7HzU`), 16/11 06:30Z (`trig_01YR8XH5TuuaMYFP93fWgaQE`). Lời nhắc trong các lịch này **vẫn ghi tên cũ "0811"** (không sửa được từ phiên đó); thông tin đúng nằm ở thẻ Tiến độ 14.

## 5. Thư viện nhân vật Hanna (đang làm dở)

- Mục đích: Hanna có nhiều dáng để ảnh quảng cáo sau không lặp. **Mỗi lần tạo ảnh quảng cáo, tham khảo pose trong thư viện để đổi dáng.** Ảnh thư viện là áo trơn, không chữ, không logo.
- Kế hoạch **10 pose**, làm **từng lô 2 ảnh**, Founder duyệt mới làm tiếp:
  - Đã duyệt (trong thư mục `Hanna - Character`): 01 đi qua vạch đi bộ `cmw7rp0k8000000ilslzuuiuz`; 03 nghiêng 3/4 `cmw7rp3d5000100il0k0ccsfo`.
  - **Chờ Founder duyệt (lô 2, đang ở thư mục `AI Generated`)**: 04 quay lưng ngoái đầu `cmw7tgg19000000ilm9yf0y5e`; 07 ngồi bậc thềm `cmw7tgjxh000100ilnayw8f0c`. **[CẦN KIỂM]** giày ảnh 07 có logo/sọc không.
  - Chưa làm: lô 3 (05 chạy nhẹ, 08 ngồi xổm buộc dây), lô 4 (02 đứng tựa tường, 06 giãn cơ), lô 5 (10 nửa người 3/4, 11 nửa người candid).
- Thẻ **`q36-hanna-pose-lo2`** (chờ duyệt) đã giao cho "Lịch cloud": khi Founder bấm **Duyệt ngay**, lịch cloud "Xử lý việc từ Thị trấn" (`trig_01UXgaDWy5QvL4rnz7DZP6JU`) sẽ chuyển 2 ảnh lô 2 vào thư mục Hanna rồi làm lô 3 và nộp thẻ mới `q36-hanna-pose-lo2-n1`. **Chưa từng chạy thật cho ảnh**: sau khi Founder bấm, kiểm xem thẻ mới có ảnh đúng không, và đừng chạy trùng.
- Công thức ảnh: GPT Image 2.5 Sunburst-HQ (`cmu0vp9fee5hg0j80zsa0tj58`), 20 token/ảnh, tỉ lệ 2:3 (toàn thân) hoặc 4:5 (nửa người/quảng cáo), ảnh tham chiếu Hanna chỉ dùng `h1` và `h2`, ghi trong `q36`.
- 2 ảnh Hanna làm lô 1 phiên bản đầu (không duyệt, đang ở `AI Generated`): `cmw7rldfx000000ilovbj92gt`, `cmw7rlg4o000100il8y3qsl40`.

## 6. Kittl

- Workspace "Dat's Team" id `cmw2y84mn3det0j8ih4epc92i`. Gói 6.000 token/tháng, ~200 token miễn phí mỗi ngày. **Còn khoảng 5.200 token** (ước tính sau phiên này; kiểm lại bằng kittl-get-token-balance).
- Thư mục tải lên: `AI Generated` `cmw3798qz00070ix5qgyypge2` · `David - Character` `cmw32pj1m4kka0ka1tcylbamz` · `Hanna - Character` `cmw30ro6h4hqt0j8iu2ypp32j` · `In Motion - Mockup Hoodie` `cmw30roi54fxe0j9dbkzssjtq`.
- Tham chiếu: David `cmw32styj3qbu0j9d2pvz0gxt`; Hanna `h1` `cmw32qtm83qc60jb45d7q7t74`, `h2` `cmw32qtm73qc50jb471wn61ub`.
- Seedance 2.5 bản đầy đủ: 80 token/giây (video 8 giây = 640). Founder chọn **dùng bản đầy đủ trước**; chỉ tạo khi có Phiếu đã duyệt.
- Mockup Gildan trên Kittl đều là Premium (Founder đã gia hạn): cần file PNG thiết kế (11 mẫu), chưa có trong Kittl.
- Từ môi trường cloud: `curl` tới `cache.kittl.com` bị chặn; xem ảnh bằng kittl-view-image (bản 384 px). Link mở: `https://www.kittl.com/ai-studio/image-generator?microEdit=<uploadId>`.
- Công cụ edit video: **chưa chọn**. Kittl "Edit Video" chỉ có trên giao diện. Ứng viên cần thử: Adobe for creativity (quick cut, render, resize), Canva, ffmpeg trên máy cloud. Không công cụ nào đạt thì Founder edit tay, Claude viết hướng dẫn nêu mục tiêu từng video.

## 7. Tổ chức (Thị trấn NOVDAT)

- Mã vai chuẩn: Marketing m1–m7 (m1 Nghiên cứu thị trường, m2 Nghiên cứu Meta, m3 Chiến lược và Viết, m4 Sản xuất creative, m5 Ads và Đo lường, m6 Cổng thương hiệu, **m7 Biên tập video** mới), Ops o1–o6 (Gác cổng, Đơn hàng, Kiểm toán store, Hỗ trợ khách, Cổng tiền, Chat AI), EVO e1–e4 (Trend Radar, Phòng thiết kế, Giữ/bỏ, Phòng thí nghiệm), cộng **Founder (f0)**, **Thư ký NOVDAT (orc, Orchestrator, luôn đi cùng Founder)** và 3 **Trưởng nhóm** m0, o0, e0.
- Quy trình 7 bước (Founder chốt 08/11): 1) nhận ý tưởng (m3) → 2) kiểm thị trường (m1, e1, m2) và thương hiệu (m6), báo Đạt/Chưa đạt, **Founder duyệt** → 3) tạo video Kittl Seedance 2.5 (m4) → 4) edit video (m7) → 5) báo cáo cuối (Orchestrator), **Founder duyệt** → 6) sản xuất design mới (e2, đầu ra trang HTML để Founder chấm như khách hàng), **Founder duyệt** → 7) Founder đưa lên Printify/Shopify.
- Ops hỗ trợ campaign: o3 (kiểm link, kiểm giảm giá BF trước 27/11), o1 (kiểm site và thanh toán 09–15/11), o2 (đếm đơn, cờ đỏ 48 giờ), o4 (mẫu trả lời BF, hộp support@), o5 (nhắc cổng tiền 11/11, 12/11).
- Báo cáo: Founder hỏi Thư ký → làm việc với 3 Trưởng nhóm → báo lại. Tiến độ agent tự về Trưởng nhóm (trang tự tổng hợp từ việc, lần chạy, hàng chờ). Báo cáo viết tay chỉ cập nhật khi Founder yêu cầu: `reports/lead-mkt-20261108`, `lead-ops-20261108`, `lead-evo-20261108` (kind `lead`) và `r-20261108-1932` (Thư ký).
- Trang Thị trấn đã sửa 08/11 (phiên bản 22 và 23): đổi nhân vật "Trưởng nhóm" thành "Founder", thêm Thư ký đi cùng, 3 Trưởng nhóm và m7; **mỗi thẻ chờ duyệt trong khung vai có 3 nút**: **Duyệt ngay** · **Không duyệt** (ô ghi chú, cho team họp trên cloud) · **Yêu cầu khác** (ô ghi chú, gửi làm lại, thẻ về chờ duyệt). Danh sách "Chờ anh duyệt" chung dùng cùng tên nút.
- Cách sửa trang an toàn: đọc artifact bằng `Artifact read`, sửa bản sao, thử bằng Playwright (cdnjs bị chặn: tải `three@0.128.0` bằng `npm pack` rồi route file cục bộ), đăng lại **không kèm khung** `<!doctype ...><body>` (hệ thống tự bọc). Giữ nguyên `capabilities`. Bản cũ vẫn còn trong lịch sử phiên bản.
- Lịch cloud khác: m1 Trinh sát Thứ Hai/Thứ Năm 08:13 VN (`trig_0181hBh6vfNjKDNUDosBX5r6`), Hook Lab thứ Sáu 08:47 VN từ 14/11 (`trig_01EavErDtqrsADuAvWvjAvXc`, chỉ soạn phiếu), Bảng điểm thứ Hai (`trig_014RCAYN3pjPNXfQMSLzjZsK`). Nội dung lời nhắc của một lịch chỉ sửa được từ cuộc trò chuyện mà lịch đó đăng vào.

## 8. Quyết định Founder đã chốt (08/11)

- Klaviyo: **chọn A**. WELCOME10 mời khách mới (giữ nguyên chữ 4 email đã duyệt); Buy 2 save 15% để giữ chân. Welcome #2 sau 48 giờ: **chưa trả lời rõ [CẦN KIỂM]**. Sender `send.novdat.com` đã Verified. **2 flow (Welcome, giỏ bỏ) chưa dựng**, Founder dựng tay theo `KLAVIYO_SETUP_0711.md` (connector Klaviyo không nối được từ cloud); làm flow giỏ bỏ trước.
- Black Friday: OK apply (xem mục 3). Style ảnh BF: Claude đề xuất kiểu trầm ("Ribbon drape"/"Crossing tape"), Founder chưa xác nhận rõ **[CẦN KIỂM]**; ảnh quả bóng foil đã tạo trước đó (`cmw64jvoc0hm40iupk0evkcck`) không dùng.
- Bỏ 3 hook UGC; không chạy lại Creative Trend Lab; mục 40 (kế hoạch Organic + Creative) đã duyệt, thực hành; mục 22 (tặng 6 hoodie) tạm dừng, xem lại 07/01/2027.
- Đội Marketing: mục 7 ở trên.

## 9. Việc tiếp theo, theo thứ tự ưu tiên

1. **Trước 00:00 NY 09/11:** hỗ trợ Founder dựng và đăng campaign (chỉ trả lời, không tự đăng); Founder ghép nhạc 2 video.
2. Founder duyệt lô 2 Hanna (`q36`). Sau khi bấm **Duyệt ngay**, kiểm thẻ lô 3 do lịch cloud nộp (mặt đúng Hanna, áo trơn, không logo/sọc).
3. Đọc số Meta chỉ-đọc 11/11, 12/11, 13/11, 16/11; báo Founder theo quy tắc dừng.
4. m7: thử công cụ edit video (hạn 12/11), nếu không đạt thì viết hướng dẫn edit tay.
5. Đã giao nhưng chưa làm: e2 mẫu trang HTML trình bày design (14/11); cập nhật lịch "Xử lý việc từ Thị trấn" cho quy trình 7 bước (13/11, có thể phải nhờ Founder vì chỉ sửa được từ cuộc trò chuyện đã tạo lịch); o4 mẫu trả lời BF (20/11); o3 kiểm giảm giá BF (26/11).
6. Black Friday 27–30/11: ảnh, email, ads (chạy ads trả phí gần như chắc chắn lỗ theo biên lợi nhuận; mục tiêu là mua dữ liệu, One Plan chỉ cho chạy ads BFCM khi CPA ≤ $35).
7. Đề xuất đóng thẻ cũ lỗi thời (chưa đóng, chờ Founder): hook video 07/11 (`job-e3-202611060835`), Creative Trend Lab (`q-ctl-20261105`), `q28-video-phieu`, `q31-kittl-plan`.

## 10. Việc đang chờ Founder

PDP Q1/Q2/Q3 trên DEV (duyệt rồi publish hoặc chạy LIVE); dựng và đăng campaign; ghép nhạc 2 video; duyệt lô 2 Hanna; dán 4 số Clarity (quá hạn từ 26/10); dựng 2 flow Klaviyo; chọn hộp Gmail cho support@ (`q09`); `q15-season-n1` (5 chỗ lệch One Plan v4.3); xác nhận giá vốn Shopify (mục 3); Welcome #2 sau 48 giờ.

## 11. Lỗi và bài học trong phiên

- Lỗi của Claude: tạo Cold Miles và Still Running bằng David dù luật là Hanna (lấy bảng 05/11 mà không đối chiếu luật). Đã làm lại. **Bài học: trước khi tạo ảnh, đối chiếu luật người mẫu của Founder, không dựa riêng vào bảng cũ.**
- Kiểm giới hạn trước khi hứa: nút Duyệt chỉ giao việc cho cloud khi thẻ có `owner` khác `f0` (đặt `owner: "cloud"`).
- Ảnh phải gửi vào chat, Founder không xem được khung Kittl.
- Nhiều MCP dạng `plugin:*` báo lỗi kết nối proxy (403): bỏ qua, không phải việc của Founder.

## 12. PROMPT bắt đầu phiên Cowork mới (sao chép nguyên)

```
Tôi là Nguyễn Đạt, Founder NOVDAT (novdat.com, Shopify + Printify, thị trường Mỹ). Bạn tiếp tục công việc từ một phiên Claude Code trước. Trả lời tiếng Việt, ngắn gọn, từng bước. Phần nào chưa rõ thì hỏi tôi, KHÔNG tự nghĩ ra điều mới.

ĐỌC TRƯỚC KHI LÀM (theo thứ tự):
1. File bàn giao: NOVDAT_TAI_LIEU/5-ban-giao/BAN_GIAO_COWORK_2026-11-08.md, repo fixr1102/Novdat-and-Invest, nhánh claude/tender-pasteur-qu3u12. Đọc hết, đặc biệt mục 1 (luật) và mục 4 (campaign).
2. Mục mới nhất của NOVDAT_TAI_LIEU/0-NHAT_KY_PHIEN.md và NOVDAT_TAI_LIEU/2-huong-dan-cho-anh/META_CAMPAIGN_INMOTION_0911.md.
3. Thị trấn NOVDAT: https://claude.ai/artifact/Wi91G6GU3sfB3dWaGCTk6C (đọc bằng ArtifactData các bộ sưu tập queue, tasks, progress, reports).
Rồi kiểm lại Shopify (chỉ đọc: giảm giá, đơn hàng) và Kittl (số dư token), đừng tin trí nhớ.

LUẬT CỨNG:
- Chỉ tôi publish trên Printify. Không in token Printify.
- Honest Commerce: không đếm ngược, khan hiếm, giá gốc giả.
- Ghi lên LIVE (giá, giảm giá, ưu đãi) chỉ khi tôi gõ "OK apply".
- Kittl: tạo ảnh chỉ khi tôi duyệt, tối đa 2 ảnh mỗi lô; video chỉ khi có Phiếu đã duyệt; mockup Gildan 18500/18000 Premium được dùng, không dùng tính năng mới.
- Mockup nữ (Hanna) chỉ 3 thiết kế: Five More Minutes, Cold Miles, Still Running. Thân dưới đa dạng nhưng không sọc, không logo hãng khác.
- Mỗi lô ảnh mới: gửi thẳng vào chat và ghi lên Thị trấn; chờ tôi duyệt mới làm lô tiếp.

VIỆC ĐẦU TIÊN:
1. Đọc xong 3 nguồn, báo tôi trạng thái trong 5 dòng (campaign đã đăng chưa, lô 2 Hanna đã duyệt chưa, đơn người lạ, token Kittl).
2. Hỏi tôi các việc chờ ở mục 10 của file bàn giao còn lại.
Chưa làm gì ngoài đọc và báo cáo cho đến khi tôi trả lời.
```

# Hook Lab: học từ video tham khảo, áp vào NOVDAT

Ngày 05/11/2026 · Claude soạn từ 2 video Founder gửi (`ThamKhaoHookVideo.mp4` 59s, `ThamKhao02.mp4` 29s).

**Cách xem:** Claude cắt khung hình 2 lần/giây (video 1) và 1 lần/giây (video 2), rồi đọc hình và phụ đề trên màn hình. **Không nghe được tiếng** (máy không có công cụ chuyển giọng nói thành chữ), nên lời thoại chỉ biết qua phụ đề. Chỗ nào là Claude tự suy ra thì ghi "suy ra".

---

## 1. Video 1: "Mở đầu mượt mà" (5 ví dụ ngành hàng)

Người dẫn nói (phụ đề): *"Bản chất không cần nghĩ kịch bản quá cầu kỳ, chỉ cần mở đầu mượt mà."* Sau đó là 5 ví dụ, mỗi ví dụ 6–10 giây.

| Giây | Ngành | Mở đầu (0–2 giây) | Lúc lộ sản phẩm | Công thức |
|---|---|---|---|---|
| 10–15 | Vali | Bữa ăn trên thảm, một người hất vật gì đó lên mâm như nồi cơm | Cắt sang vali cam cận cảnh | **Đồ vật đóng vai** thứ khác |
| 18–25 | Xe máy | Cận cảnh vật tròn màu đen ướt nước trong bồn rửa, trông như cái nồi | Máy kéo lùi ra cả showroom BMW | **Cận cảnh đánh lừa**, rồi lùi máy |
| 26–33 | Giày dép | Người trượt ván phóng khỏi dốc, bay lên trời | Máy theo lên trời, đáp xuống phố khác, tay cầm đôi dép | **Nối cảnh liền mạch** (bầu trời làm cầu nối) |
| 37–45 | Thảm | Phố New York, cô gái thả điện thoại buộc dây qua nắp cống; caption *"what is bro filming 💀"* | Điện thoại "rơi" vào kho thảm | **Tò mò + nối cảnh** |
| 47–53 | Quần áo | Bãi đỗ xe, một ông cụ nằm dưới đất cạnh ô tô, tưởng tai nạn | Người phụ nữ kéo áo lên: ông cụ giơ chiếc tee của cửa hàng | **Tưởng chuyện xấu, hoá ra là áo** |

**5 điểm chung:**
1. 0–2 giây đầu là **tình huống lạ hoặc chuyển động mạnh**. Chưa có logo, chưa có giá, chưa nói "mua".
2. Sản phẩm lộ ra ở giây 3–8, như **lời giải** cho câu hỏi "cái gì vậy?". Người xem ở lại vì muốn biết đáp án.
3. Quay như **điện thoại thật** (rung, ánh sáng thường, người thường), không như phim quảng cáo.
4. Kịch bản đơn giản: 1 tình huống, 1 cú lật.
5. Không cần lời thoại: hiểu được khi tắt tiếng.

## 2. Video 2: "Trụ sở trên sao Hoả cho 19 AI agent" (LinTech)

**Đây cũng là một hook hay:**
- **Câu mở bằng con số và hình ảnh lạ:** "Mình xây cả 1 trụ sở trên sao Hoả cho 19 AI agent".
- **Mỗi 2–3 giây đổi một tiêu đề lớn:** trụ sở → mỗi phòng 1 nhiệm vụ → giao 1 chủ đề → 7 bài đã duyệt → "mình đi ngủ, đội vẫn chạy".
- **Kết bằng câu hỏi mời bình luận:** "Muốn có trụ sở AI như vậy?"

**Nội dung cho NOVDAT (đội agent):**
- Mỗi "toà nhà" là một bộ phận: chiến lược, sáng tạo, media.
- Giao **1 chủ đề**, cả đội cùng làm theo dây chuyền: nghiên cứu → viết hook → viết bài cho 3 kênh → làm ảnh bìa → dựng video → bảng tiến độ báo ngay.
- **"Bài đã duyệt: 7"**: có bước duyệt trước khi đăng.

Đề xuất đội agent cho NOVDAT ở file riêng: `NOVDAT_TAI_LIEU/4-doi-agent/NOVDAT_AGENT_TEAM_DE_XUAT.md`.

---

## 3. Áp vào NOVDAT: lọc theo luật trước

| Học | Bỏ, không áp |
|---|---|
| Mở bằng tình huống lạ hoặc chuyển động, lộ áo sau | **Giả tai nạn**, giả người bị thương: dễ bị Meta xếp "nội dung giật gân", và lệch giọng NOVDAT (điềm tĩnh, hài khô) |
| Quay kiểu điện thoại, người thường | Logo hay biển hiệu thương hiệu khác trong khung (BMW, Monster ở ví dụ): rủi ro IP |
| Hiểu được khi tắt tiếng | Câu đoán cảm xúc người xem ("You're tired") hoặc "you/your" trong chữ ads |
| Caption meme ngắn kiểu "what is bro filming" | Để AI đóng vai khách thật hay creator thật |

### Công thức riêng của NOVDAT: "Câu dở dang, áo nói nốt"

NOVDAT là cửa hàng **áo nói ra điều người trẻ muốn nói**. Vì vậy hook mạnh nhất là:
- 0–2 giây: chữ trên màn hình bắt đầu một câu, kèm một cảnh đời thường.
- Giây 3–5: **chiếc áo nói nốt câu đó**.

Người xem ở lại để biết câu kết. Câu kết chính là sản phẩm.

## 4. Ngân hàng hook (10 hook, [ĐỀ XUẤT])

Chữ trên màn hình viết tiếng Anh cho khách Mỹ. Không có "you/your". Mọi video có nhãn "Visuals created with AI."

| # | Mẫu áo · người | 0–2 giây (hook) | 3–6 giây (áo trả lời) | Công thức | Cần gì |
|---|---|---|---|---|---|
| H1 | Tired. Went Anyway · David | Phòng tối, điện thoại báo thức 5:12, một bàn tay tắt báo thức. Chữ: **"5:12 AM. Tired."** | Kéo hoodie qua đầu, mở cửa ra phố. Áo: *TIRED. WENT ANYWAY.* | Câu dở dang | 2 clip + ghép |
| H2 | Uphill, Slowly · David | Máy ngửa lên một con dốc rất dài (như cú bay lên trời của ví dụ giày). Chữ: **"That hill again."** | Hạ máy xuống: David đang leo chậm, áo *UPHILL, slowly.* | Nối cảnh qua bầu trời | 1 clip |
| H3 | Not Fast. Still Out Here · Hanna | Hanna chạy, một cụ dắt chó đi bộ vượt qua. Chữ: **"Got passed by a dog walker."** | Hanna quay lại, cười, chạy tiếp. Áo: *NOT FAST. STILL OUT HERE.* | Hài khô tự giễu | 1 clip. [CẦN KIỂM] giọng: tự giễu, không chê người chậm |
| H4 | Five More Minutes · Hanna | Cận cảnh chăn, chỉ thấy tay thò ra kéo chăn lên. Chữ: **"Five more…"** | Cắt sang Hanna đã ở ngoài phố, áo *Five More Minutes*. Chữ: "…then out the door." | Câu dở dang | 2 clip + ghép |
| H5 | Run Now · David | Cận cảnh vật màu đen trông như cái gối trên giường | Máy lùi ra: là hoodie gấp sẵn; tay cầm lên, mặc, đi | Cận cảnh đánh lừa | 1 clip, có thể **không người** |
| H6 | Carb-Loaded · Hanna | Bát mì khổng lồ, chữ: **"Pre-run nutrition plan:"** | Cắt sang áo *Carb-Loaded* | Hài khô | 2 clip |
| H7 | Cold Miles · David | Kính xe phủ băng, ngón tay vẽ một đường. Chữ: **"28°F."** | Qua đường vẽ thấy David chạy, áo *Cold Miles* | Nối cảnh qua kính | 1 clip |
| H8 | Proudly Mid-Pack · cả hai | Nhóm chạy sáng sớm, máy lướt từ đầu đoàn. Chữ: **"Not first. Not last."** | Dừng ở giữa đoàn: David và Hanna, áo *Proudly Mid-Pack* | Câu dở dang | 1 clip. Bạn cùng nhóm, không cặp đôi |
| H9 | Mọi mẫu · không người | Hoodie treo trên móc lúc trời tối, đồng hồ 5:00 | Một bàn tay lấy áo đi; cửa đóng | Không người, rẻ | Video dự phòng, ít lỗi AI |
| H10 | Noel (khi lên store) | Tiệc ugly sweater ồn ào, áo len chói loá | Máy dừng ở một người mặc sweatshirt chữ hài khô, im lặng uống cacao | Tương phản | Chờ lô Noel |

**Ảnh tĩnh và carousel cũng áp được cùng công thức:**
- Thẻ 1: chỉ có nửa câu trên nền trơn.
- Thẻ 2: ảnh David hoặc Hanna mặc áo có nửa câu còn lại.
- Ảnh flash đêm (B1) là kiểu dừng cuộn tốt, vì trông như ảnh bạn bè chụp.

## 5. AI làm được tới đâu (thẳng thắn)

| Việc | Seedance (Kittl) | Ai làm |
|---|---|---|
| 1 cảnh, 1 hành động, 5–8 giây | Làm được | Claude, sau khi anh duyệt Phiếu |
| Nối 2 cảnh (H1, H4, H6) | Tạo 2 clip riêng | **Anh ghép** (CapCut). Claude không tải video Kittl về được (máy bị chặn `cache.kittl.com`) |
| Chữ trên màn hình | Không để AI vẽ chữ | Anh thêm chữ khi ghép |
| Video không người (H5, H9) | Làm được, ít lỗi nhất | Claude |

## 6. Đề xuất cho test 08/11 (không đổi cấu trúc test)

> **Founder chốt 05/11:** thêm hook vào 2 video sắp tạo. Bản mô tả video đã sửa thành bản 2 (`NOVDAT_TAI_LIEU/3-creative/VIDEO_SPEC_TEST_0811.md`). Video 2 dùng hook "Mile 2. Legs said no." thay cho bản dắt chó (ít chỗ AI dễ lỗi hơn). Từ nay **không dùng chi tiết hơi thở thành khói** trong ảnh và video.

- **Giữ nguyên** 3 quảng cáo ảnh và cấu trúc ad set. Plan cấm đổi giữa vòng đo.
- **Sửa 2 bản mô tả video** đang chờ duyệt: thêm hook "câu dở dang" vào chữ trên màn hình. Thời lượng vẫn 6 giây, token không đổi (420), chỉ đổi chữ anh ghép:
  - Video 1 (David, Uphill): 0–2 giây **"That hill again."** → áo trả lời *UPHILL, slowly.* (theo H2: máy ngửa lên dốc rồi hạ xuống).
  - Video 2 (Hanna, Not Fast): 0–2 giây **"Got passed by a dog walker."** → áo *NOT FAST. STILL OUT HERE.* (H3; cảnh cụ dắt chó vượt qua cần thêm vào prompt).
- Hook H1, H4–H10: để vòng 2, sau khi có số đọc ngày 11/11 và 15/11.

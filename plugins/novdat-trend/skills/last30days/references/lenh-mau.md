# Lệnh mẫu theo ngách

Mỗi ngách một lệnh. Gõ trong Claude Code (cloud hoặc local) khi plugin `novdat-trend` đã bật:

```
/novdat-trend:last30days <topic tiếng Anh>
```

Mỗi lệnh dưới đây là một lần chạy riêng. Chạy lệnh "chính" trước. Chỉ chạy lệnh phụ khi lệnh chính có tín hiệu.

## Running (tiếp nối tài liệu Winter Running Radar)

Subreddit: `running, XXRunning, AdvancedRunning, trailrunning, firstmarathon, C25K`

| Mục đích | Lệnh |
|---|---|
| Chính | `/novdat-trend:last30days winter running gear` |
| Áo, lớp mặc | `/novdat-trend:last30days cold weather running shirt` |
| Câu đùa, văn hoá runner (ý tưởng chữ in) | `/novdat-trend:last30days funny running shirt` |
| Quà cho runner (mùa lễ) | `/novdat-trend:last30days gifts for runners` |
| Giải chạy mùa lễ | `/novdat-trend:last30days turkey trot jingle bell run` |

Tránh: tên giải có nhãn hiệu (Boston Marathon, NYC Marathon), tên hãng giày.

## Pickleball

Subreddit: `Pickleball` (ngách nhỏ, có thể thêm subreddit địa phương Mỹ nếu cần)

| Mục đích | Lệnh |
|---|---|
| Chính | `/novdat-trend:last30days pickleball shirts` |
| Câu đùa, văn hoá người chơi | `/novdat-trend:last30days funny pickleball` |
| Quà | `/novdat-trend:last30days pickleball gifts` |
| Đồ mặc mùa lạnh, sân trong nhà | `/novdat-trend:last30days indoor pickleball winter` |

Tránh: PPA, MLP, USA Pickleball, tên hãng vợt (Selkirk, Joola...), tên VĐV.

## Noel

Subreddit: `Christmas, GiftIdeas, Frugal`

| Mục đích | Lệnh |
|---|---|
| Chính | `/novdat-trend:last30days ugly christmas sweater` |
| Áo gia đình | `/novdat-trend:last30days matching family christmas shirts` |
| Quà | `/novdat-trend:last30days christmas gift shirts` |
| Giao ngách Noel và Running | `/novdat-trend:last30days christmas running shirt` |
| Giao ngách Noel và Pickleball | `/novdat-trend:last30days christmas pickleball` |

Tránh: Grinch, Elf, Home Alone, Rudolph, Peanuts, Disney, nhân vật có bản quyền. Gặp thì gắn cờ "Rủi ro IP".

## Ghi chú

- Ngách mới: thêm một mục theo đúng mẫu trên (subreddit, bảng lệnh, cụm cần tránh).
- Khi so sánh ngách, chỉ so các lần chạy cùng ngày, vì cửa sổ 30 ngày trượt theo ngày chạy.

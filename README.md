# NOVDAT: plugin Claude Code

## novdat-trend: Trend Radar với số tương tác thật

Skill `last30days` lấy số tương tác thật trong 30 ngày (điểm và comment Reddit, view và like YouTube) để bổ sung cho tiêu chí "nhu cầu thật ngoài store" (Hiến chương §7, 45%) khi chọn hero. Đây là bản thu gọn của [mvanhorn/last30days-skill](https://github.com/mvanhorn/last30days-skill) (MIT).

Đã loại: đọc cookie trình duyệt, ScrapeCreators (TikTok, Instagram, Pinterest), Polymarket, GitHub, tín hiệu tuyển dụng, trending toàn cầu, đăng công khai lên ht-ml.app. Chi tiết ở `plugins/novdat-trend/skills/last30days/SKILL.md` và `engine/UPSTREAM.md`.

Giới hạn: chưa lọc được "tại Mỹ". Engine chỉ lọc theo thời gian. Mỹ chỉ đạt gần đúng nhờ truy vấn tiếng Anh và subreddit, và điều này được ghi trong mọi báo cáo.

### Dùng

```
/novdat-trend:last30days winter running gear
/novdat-trend:last30days pickleball shirts
/novdat-trend:last30days ugly christmas sweater
```

Xem thêm lệnh mẫu ở `plugins/novdat-trend/skills/last30days/references/lenh-mau.md`. Báo cáo lưu local ở `~/Documents/NOVDAT/last30days`.

### Yêu cầu

- Python 3.12+
- `yt-dlp` cho YouTube: `pip install yt-dlp` (không có thì chỉ còn Reddit)
- Không cần API key nào.

### Cài trên Claude Code cloud (claude.ai/code)

`.claude/settings.json` của repo đã khai báo marketplace `novdat` và bật `novdat-trend`, nên phiên cloud mới mở repo này sẽ tự nạp plugin.

Mạng cloud phải cho phép các host sau. Vào menu môi trường trên thanh tiêu đề phiên → **Edit** → **Network access** → **Allowed domains**:

```
www.reddit.com
reddit.com
arctic-shift.photon-reddit.com
www.youtube.com
youtube.com
*.googlevideo.com
html.duckduckgo.com
www.startpage.com
pypi.org
files.pythonhosted.org
```

Hai host cuối dùng để cài `yt-dlp`. Có thể thêm `pip install yt-dlp` vào setup script của môi trường.

### Cài trên máy local

Cách 1, dùng cho mọi thư mục (scope user). Trong Claude Code:

```
/plugin marketplace add fixr1102/Novdat-and-Invest
/plugin install novdat-trend@novdat
```

Repo private thì máy cần đăng nhập GitHub (`gh auth login` hoặc SSH key). Nếu plugin chưa có trên nhánh mặc định, clone repo rồi trỏ tới thư mục:

```bash
git clone -b claude/eager-sagan-t943vz https://github.com/fixr1102/Novdat-and-Invest.git ~/novdat-plugins
```

```bash
claude plugin marketplace add ~/novdat-plugins
```

```bash
claude plugin install novdat-trend@novdat
```

Cách 2: mở Claude Code trong chính thư mục repo đã clone. Settings của project sẽ đề nghị cài marketplace và plugin.

Khởi động lại Claude Code sau khi cài. Kiểm tra nguồn:

```bash
~/novdat-plugins/plugins/novdat-trend/skills/last30days/scripts/novdat-l30.sh --diagnose
```

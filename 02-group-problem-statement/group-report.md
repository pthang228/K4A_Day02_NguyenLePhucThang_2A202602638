# 02 — Group Problem Statement

## Thành viên nhóm

| Thành viên | Mã học viên | Candidate nổi bật |
|---|---|---|
| Nguyễn Lê Phúc Thắng | 2A202602638 | FAQ khách homestay qua nhiều kênh |
| Lê Gia Bảo | 2A202602887 | Tổng hợp chi tiêu đa nguồn |
| Trang Phước Hoàng Minh | 2A202602690 | Tổng hợp monthly report từ weekly report và GitHub |
| Bùi Trọng Trịnh | 2A202602861 | Tổng hợp tiến độ nhóm từ chat, bảng task và file |
| Vũ Minh Hiếu | 2A202602779 | Tổng hợp công việc tuần và viết weekly report |

**Candidate nhóm chọn:** Cuối tháng, ERP Engineer mất khoảng 2.5–3.5 giờ để đối chiếu weekly report và GitHub commits rồi viết lại thành báo cáo cho quản lý không dùng GitHub.

---

## Phase 3 — Group Convergence

### 3.1. Top candidates từ 5 individual report

| Người đưa ra | Top 3 candidate | Nhận xét |
|---|---|---|
| Phúc Thắng | FAQ homestay; lịch phòng đa kênh; dọn phòng/bảo trì | Workflow rõ nhưng domain/data của một thành viên. |
| Gia Bảo | Chi tiêu đa nguồn; thực đơn; deadline LMS/email | Pain cá nhân có metric nhưng khó thử chung. |
| Hoàng Minh | Monthly report; requirement rải rác; cập nhật GitHub/Excel/phiếu | Monthly report có baseline lớn, workflow 6 bước và dữ liệu nguồn rõ. |
| Trọng Trình | Group update; tìm quyết định cũ; checklist bài nộp | Cùng pattern tổng hợp thông tin, dễ pilot trong lớp. |
| Minh Hiếu | Weekly report; report dataset; README/runbook | Weekly report xác nhận pattern Git/task/chat → narrative cho leader. |

### 3.2. Cluster

| Cluster | Candidates | Pattern chung | Kết luận |
|---|---|---|---|
| Tổng hợp update/narrative | Monthly report ERP, group update, weekly report | Gom nguồn rải rác rồi viết cho người khác đọc | Chọn monthly report: impact và baseline lớn nhất. |
| Tìm đúng thông tin | Requirement rải rác, quyết định cũ, deadline LMS/email | Search + xác minh nguồn hiện hành | Cần quyền truy cập/index; không chọn. |
| Rule/process trước | Checklist, đồng bộ status, lịch phòng, dọn phòng | Field rõ, lặp lại | Nghiêng về Rule thay AI. |
| Domain cá nhân | FAQ homestay, chi tiêu, thực đơn, dataset, README | Pain thật nhưng khó validation chung | Không chọn. |

### 3.3. Shortlist và score

| Candidate | Actor rõ | Workflow rõ | Evidence | Impact đo được | Làm trong lab | So sánh R/W/A | Nhóm hiểu domain | Tổng |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Monthly report ERP | 5 | 5 | 4 | 5 | 4 | 5 | 3 | 31 |
| Tổng hợp tiến độ nhóm | 5 | 5 | 4 | 4 | 5 | 5 | 5 | 33 |
| FAQ homestay | 5 | 5 | 3 | 4 | 3 | 5 | 2 | 27 |

**Vì sao chọn monthly report dù điểm thấp hơn group update:** Monthly report có impact lớn hơn (2.5–3.5 giờ/tháng), có source data đã xác định (4 weekly report và commit/PR), đồng thời pilot có thể chạy bằng dữ liệu đã được Hoàng Minh ẩn thông tin nhạy cảm. Group update là phương án dự phòng nếu không được phép dùng data pilot.

**Vì sao không chọn các candidate còn lại:** Group update dễ thử nhưng impact nhỏ hơn; FAQ homestay phụ thuộc data vận hành; checklist/đồng bộ status có cấu trúc nên Rule/process phù hợp hơn. Agent không phải candidate vì tất cả workflow đều có hướng hạ xuống Rule hoặc Workflow.

---

## Phase 4 — Quick Validation + Research

### 4.1. Evidence và assumptions

| Nguồn | Số mẫu | Tín hiệu xác nhận | Giới hạn | Nhóm dùng thế nào |
|---|---:|---|---|---|
| Individual report Hoàng Minh | 1 | Monthly report mất khoảng 2.5–3.5 giờ; bottleneck là đối chiếu weekly/GitHub và viết narrative. | Đây là ước lượng, chưa bấm giờ hai kỳ liên tiếp. | Dùng làm baseline giả định cho pilot, phải đo lại. |
| Individual report Minh Hiếu | 1 | Weekly report mất 45–60 phút để lục Git/Jira/chat rồi viết narrative. | Bối cảnh intern AI, khác ERP. | Xác nhận pattern nguồn rải rác → narrative, không cộng số liệu. |
| Individual report Trọng Trình | 1 | Group update mất 35–45 phút để gom chat/bảng/file. | Bối cảnh nhóm học, không phải công ty. | Xác nhận pain tổng hợp thông tin lặp lại ở domain khác. |
| Interview/survey bên ngoài | 0 | Chưa thực hiện. | Chưa có quote độc lập từ quản lý/ERP team. | Pilot không được tự gửi report; cần lấy feedback từ người review sau pilot. |

**Insight:** Pain không nằm ở việc lấy commit đơn lẻ mà ở việc đối chiếu nhiều nguồn và dịch chúng thành narrative quản lý đọc được. Do hậu quả của draft sai có thể chặn bằng review, nhóm có thể Go với pilot thủ công, scope hẹp và có rollback.

### 4.2. Research giải pháp đã có

| Tool/pattern | Link | Họ giải quyết phần nào? | Bài học / rủi ro |
|---|---|---|---|
| GitHub Projects | [GitHub Docs](https://docs.github.com/en/issues/planning-and-tracking-with-projects) | Theo dõi issues/PRs qua bảng/board và custom fields. | GitHub có thể là nguồn task/commit chuẩn; vẫn không tự tạo narrative quản lý cần. |
| Jira Automation | [Atlassian](https://www.atlassian.com/software/jira/guides/automation/overview) | Rule trigger–condition–action để cập nhật field/nhắc việc. | Automation phù hợp gom/check field có cấu trúc; không thay human review narrative. |
| Slack AI | [Slack Help](https://slack.com/help/articles/28244420881555-Manage-Slack-AI-settings-for-your-organisation) | Summary hội thoại/thread tùy plan và quyền truy cập. | AI summary cần scope nguồn rõ, có thể thiếu context; không được xem là source of truth. |

**Research takeaway:** Không làm Agent tự lấy/gửi báo cáo. Dùng Rule/template để chuẩn hóa input; AI chỉ draft narrative từ weekly report và commit/PR đã được chọn; ERP Engineer review trước khi gửi.

---

## Phase 5 — Workflow + Problem Statement

### 5.1. Current workflow

```text
CURRENT STATE — khoảng 180 phút (ước lượng cần đo lại)

[1 Mở 4 weekly report: 20']
→ [2 Lấy commit/PR GitHub: 25']
→ [3 Đối chiếu weekly với GitHub: 40']              <-- bottleneck
→ [4 Viết narrative cho quản lý: 70']                <-- bottleneck chính
→ [5 Copy sang Excel/phiếu nếu cần: 15']
→ [6 Gửi, nhận comment và sửa: 10']
```

| Bước | Actor | Input → Output | Thời gian | Ghi chú |
|---|---|---|---:|---|
| 1 | ERP Engineer | 4 weekly report → danh sách việc | ~20 phút | Có thể khác format. |
| 2 | ERP Engineer | GitHub commit/PR → thay đổi kỹ thuật | ~25 phút | Quản lý không dùng GitHub. |
| 3 | ERP Engineer | Hai nguồn → task đã xác minh | ~40 phút | Dễ sót/trùng task. |
| 4 | ERP Engineer | Task đã xác minh → narrative | ~70 phút | Bottleneck chính: “dịch” kỹ thuật sang quản lý. |
| 5–6 | ERP Engineer + quản lý | Narrative → bản nộp cuối | ~25 phút | Có thể bị hỏi lại/sửa. |

### 5.2. Future workflow

```text
FUTURE STATE — mục tiêu pilot: dưới 45 phút

[1 Rule/template: export 4 weekly report + commit/PR theo format cố định]
→ [2 Rule: map task ID, link commit/PR, tuần, status vào bảng nguồn]
→ [3 AI draft narrative: đã làm / ảnh hưởng / việc tiếp theo; mỗi claim có source link]
→ [4 ERP Engineer kiểm từng claim, số liệu và link; viết lại đoạn không đúng]  <-- human boundary
→ [5 ERP Engineer gửi bản cuối]

Fallback: thiếu source, AI bịa task hoặc giọng không phù hợp → bỏ draft; dùng template + checklist và viết tay.
```

| Metric | Trước | Sau kỳ vọng | Cách đo |
|---|---:|---:|---|
| Tổng thời gian | 150–210 phút (ước lượng) | <45 phút | Bấm giờ 2 report lịch sử: manual và pilot. |
| Thời gian viết narrative | ~70 phút | ≤20 phút | Bấm giờ riêng bước viết/review. |
| Claim có source | Chưa đo | 100% | Mỗi bullet phải link weekly report hoặc commit/PR. |
| Task bị quản lý hỏi lại | Chưa đo | Không tăng | Đếm comment/câu hỏi sau gửi. |
| Risk mới | Không có AI hallucination | Có risk bịa/diễn giải sai | Engineer review trước gửi; AI không được gửi. |

### 5.3. Problem Statement v0

| Field | Nội dung |
|---|---|
| **Actor** | ERP Engineer tại Lug viết monthly report cho nhóm trưởng/quản lý không theo dõi GitHub. |
| **Workflow** | Mở weekly report → lấy commit/PR → đối chiếu → viết narrative → copy format → gửi/sửa. |
| **Bottleneck** | Đối chiếu nhiều nguồn và diễn giải commit thành business narrative. |
| **Impact** | Ước lượng 2.5–3.5 giờ/tháng; dễ trùng/sót task và bị hỏi lại. |
| **Success metric** | Pilot <45 phút; 100% claim có source; không tăng comment hỏi lại. |
| **Boundary** | Không tự lấy dữ liệu công ty ngoài bộ đã chọn, không tự gửi, không tự bịa task/số liệu. |

---

## Phase 6 — Rule / Workflow / Agent + Decision

### 6.0. Độ phù hợp

- Độ mơ hồ: **cao** — narrative “đã làm gì/ảnh hưởng gì/tiếp theo là gì” cần diễn đạt theo người đọc.
- Độ phức tạp: **cao** — 4 weekly report, GitHub và có thể thêm Excel/phiếu; bước sau phụ thuộc dữ liệu trước.
- Ô phù hợp: **Workflow có AI hỗ trợ draft**, kèm Rule chuẩn hóa nguồn và human review.

### 6.1. So sánh Rule / Workflow / Agent

| Mức | Phương án | Khi nào đủ | Rủi ro | Chọn? |
|---|---|---|---|---|
| Rule | Một source/task ID, template monthly, export commit/PR, checklist field. | Nếu quản lý chấp nhận danh sách task chuẩn. | Không giảm nhiều phần narrative. | Dùng cho input. |
| Workflow | Rule gom/map source → AI draft narrative → engineer review/gửi. | Khi quản lý vẫn cần diễn giải theo context. | Draft sai/thiếu/bịa; cần source và review. | Chọn pilot. |
| Agent | Tự đọc nhiều tool, quyết định ưu tiên, tự gửi report. | Chỉ khi policy/quyền truy cập/eval đã trưởng thành. | Permission rộng, data company, tự gửi sai. | Không chọn. |

**5 câu hỏi chốt:**

1. Rule có giải 70–80% case không? **Có thể giải phần gom/checklist; pilot sẽ đo liệu narrative còn là bottleneck.**
2. Có bước rẽ nhánh? **Có, khi weekly và commit mâu thuẫn hoặc thiếu source.**
3. Có cần Agent? **Không; engineer phải tự hỏi/đối chiếu và gửi.**
4. AI sai ai phát hiện? **ERP Engineer kiểm từng claim, số liệu và link trước khi gửi.**
5. Có hạ về Rule? **Có; template + checklist là fallback luôn sẵn.**

### 6.2. Problem Statement v1

| Field | Nội dung |
|---|---|
| **Actor** | ERP Engineer viết monthly report cho quản lý không theo dõi GitHub. |
| **Workflow** | Export weekly/commit → Rule map source → AI draft narrative có link → engineer review → engineer gửi. |
| **Bottleneck** | 40 phút đối chiếu nguồn và 70 phút viết narrative (ước lượng cần pilot xác nhận). |
| **Impact** | 2.5–3.5 giờ/tháng; report trễ, dễ sót/trùng task hoặc phải trả lời thêm. |
| **Success metric** | <45 phút/report; 100% claim có source; không tăng comment/câu hỏi xác minh. |
| **Boundary** | Chỉ dùng data đã ẩn thông tin nhạy cảm và được Hoàng Minh chọn; AI không tự lấy/sửa/gửi dữ liệu. |
| **AI intervention point** | Sau khi source đã map, trước khi engineer viết narrative. |
| **Mức chọn** | Workflow pilot: Rule/template + AI draft + engineer review. |
| **Rủi ro & người kiểm tra** | Hallucination/thiếu context; Hoàng Minh kiểm từng bullet với weekly report hoặc commit/PR. |

### 6.3. Final decision

| Câu hỏi | Yes / Not Yet / No | Ghi chú |
|---|---|---|
| Actor + workflow rõ? | Yes | Actor, source, 6 bước và bottleneck đã rõ. |
| Baseline + metric đo được? | Yes, pilot cần xác nhận | Có khoảng 2.5–3.5 giờ; pilot bấm giờ để thay ước lượng. |
| Data/input đủ dùng? | Yes, có điều kiện | Chỉ dùng 2 bộ report lịch sử đã ẩn thông tin nhạy cảm và được owner cho phép. |
| AI sai có chấp nhận được? | Yes, có điều kiện | AI draft; engineer review source; không tự gửi. |
| Có owner review? | Yes | Hoàng Minh là owner/reviewer và người gửi duy nhất. |
| Có non-AI alternative? | Yes | Template + checklist được chạy song song làm baseline/fallback. |

**Decision:**

```text
Go — pilot nhỏ, bán thủ công, có giới hạn dữ liệu và human review bắt buộc.
```

**Lý do:** Workflow, actor, nguồn input, bottleneck và metric đã rõ; rủi ro được hạ bằng việc chỉ dùng report/commit đã chọn, yêu cầu source link cho mọi claim và không cho AI gửi report. Pilot cũng so sánh trực tiếp Rule/template với AI Workflow, nên có thể chứng minh AI thực sự tạo giá trị hay không.

**Pilot nhỏ nhất:**

```text
1. Hoàng Minh chọn 2 monthly report lịch sử; ẩn tên khách hàng, mã nội bộ, secret và dữ liệu nhạy cảm.
2. Chuẩn bị 4 weekly report + commit/PR tương ứng cho mỗi tháng, kèm task ID/source link.
3. Chạy baseline bằng template/checklist thủ công; sau đó chạy AI draft từ đúng bộ input.
4. Hoàng Minh review từng bullet, đo tổng thời gian, thời gian review, % claim có source,
   số claim sai/sót và comment hỏi lại của quản lý (nếu được phép gửi bản pilot).
5. Pass pilot khi: <45 phút, 100% claim có source, 0 claim bịa và không tăng câu hỏi xác minh.
```

**Exit / rollback:** Nếu có claim không nguồn, engineer phải viết lại trên 50% draft trong 2 lần liên tiếp, hoặc có dữ liệu nhạy cảm không thể ẩn, dừng AI và quay về template + checklist + narrative viết tay.

### Self-check

- [x] Đã tổng hợp candidate từ 5 branch, có cluster/shortlist/score.
- [x] Có evidence, research chính thức, workflow before/after, PS v0/v1 và so sánh R/W/A.
- [x] Go chỉ cho pilot có scope, metric, boundary, owner và rollback rõ.

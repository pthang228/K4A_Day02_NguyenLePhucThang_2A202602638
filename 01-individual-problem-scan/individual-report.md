# 01 — Individual Problem Scan

> Điền theo Phase 1 + Phase 2 trong `01-worksheet.md`. Tự scan trước, dùng AI sau để phản biện. Không copy ví dụ Weekly Report.

## Thông tin cá nhân

- Họ và tên: Vũ Minh Hiếu
- Mã học viên: 2A202602779
- Vai trò / bối cảnh (VD: sinh viên năm X, intern PM, ...): Intern AI
- Công việc hằng tuần (3-5 gạch đầu dòng để soi problem): Hoàn thành task được giao và ghi lại tài liệu, kết quả, báo cáo cho team leader.

---

## Phase 1 — Scan 5+ problems (tối thiểu 5, khuyến khích 8-10)

**Cách điền:** mỗi dòng = việc gì + ai chịu + đo bằng gì. Cột `Dấu hiệu thật` bắt buộc có số: mất bao lâu (bấm giờ mấy lần), mấy lần/tuần, bao nhiêu người gặp, log/ticket/quote nào.

| # | Lăng kính (Lặp lại / Tốn thời gian / AI có thể tốt hơn / Pain từ người khác) | Problem quan sát được | Ai chịu ảnh hưởng? | Dấu hiệu thật (số + bằng chứng) |
|---|---|---|---|---|
| 1 | Lặp lại | Tổng hợp công việc đã làm trong tuần và viết weekly report | Nhân viên | Lặp lại hàng tuần, phải cố gắng nhớ các việc đã làm |
| 2 | Tốn thời gian | Viết report trình bày các dataset có thể sử dụng | Nhân viên | 40 phút / report |
| 3 | Tốn thời gian | Tổng hợp và đối chiếu kết quả benchmark giữa các prompt/mô hình vào sheet báo cáo | Intern / Leader | 45–60 phút mỗi đợt test (2–3 đợt/tuần), copy thủ công từng chỉ số từ log/terminal |
| 4 | AI có thể tốt hơn | Tóm tắt và trích xuất thông tin chính từ các paper/tài liệu kỹ thuật mới để đề xuất giải pháp | Intern / Team tech | Mất 2–3 giờ để đọc lướt và lọc 5 paper nhưng chỉ dùng được 1–2 ý tưởng khả thi |
| 5 | Pain từ người khác | Viết tài liệu kỹ thuật (documentation/docstring) và hướng dẫn chạy code (README) sau khi hoàn thành task | Intern / Thành viên khác nhận lại task | 60–90 phút/repo; thường bị đẩy sang cuối sprint hoặc viết sơ sài khiến người sau mất 1–2 giờ debug môi trường |

> Gợi ý tự soi: tuần trước mất nhiều thời gian nhất vào việc gì? Việc gì hay trì hoãn? Người khác hay hỏi lại câu gì? Workflow nào ai cũng biết là chậm?

**AI đã dùng ở Phase 1 (nếu có):**
- Prompt đã hỏi: "Tôi là nhân viên/intern AI, công việc hàng tuần gồm: tổng hợp báo cáo tiến độ, benchmark mô hình và khảo sát dữ liệu/paper. Hãy đóng vai trò phản biện, gợi ý thêm các pain point tiềm năng trong quy trình làm việc theo 4 lăng kính: Lặp lại, Tốn thời gian, AI có thể tốt hơn, Pain từ người khác; kèm bối cảnh cụ thể và số đo định lượng thực tế."
- Ý dùng được: Gợi ý về pain khi đọc/lọc paper kỹ thuật mới (lăng kính AI có thể tốt hơn) và viết tài liệu README/docstring bàn giao khiến đồng nghiệp nhận lại mất thời gian debug (lăng kính Pain từ người khác).
- Ý bỏ vì không phải pain thật:
  + Gợi ý "Tự động hóa toàn bộ việc thiết kế và huấn luyện mô hình": Bỏ vì phạm vi quá rộng, viển vông.

**Self-check Phase 1:**
- [x] Đủ 5+ dòng, mỗi dòng có actor + số đo cụ thể
- [x] Dùng ít nhất 3/4 lăng kính
- [x] Không có dòng chung chung kiểu "mất nhiều thời gian"

---

## Phase 2 — Top 3 Problem Cards

### 2.1. Chọn top 3

Giữ bài nào: actor cụ thể, workflow vẽ được 3-7 bước, bottleneck ở 1 bước, impact đo được. Loại bài quá rộng.

| Rank | Problem (copy từ bảng scan) | Vì sao chọn (2-3 ý) | Điều còn chưa chắc |
|---|---|---|---|
| 1 | Tổng hợp công việc đã làm trong tuần và viết weekly report | - Workflow lặp lại hàng tuần rất rõ ràng (chiều thứ Sáu).<br>- Tốn nhiều thời gian hồi tưởng và lục lại task rải rác ở nhiều nguồn.<br>- Impact đo được rõ ràng (tiết kiệm ~40 phút/người/tuần). | - Chất lượng bản tóm tắt narrative AI sinh ra có đủ tự nhiên và đúng trọng tâm đánh giá của Leader không. |
| 2 | Viết report trình bày các dataset có thể sử dụng | - Tần suất diễn ra thường xuyên khi bắt đầu khảo sát bài toán AI mới.<br>- Thông tin metadata có cấu trúc rõ ràng (kích thước, nhãn, format, license).<br>- Giảm thiểu rủi ro pháp lý/bản quyền khi khảo sát dữ liệu. | - Khả năng AI trích xuất chính xác các dataset đặc thù từ các bài báo khoa học hoặc trang lưu trữ chưa chuẩn hóa. |
| 3 | Soạn thảo README bàn giao & hướng dẫn chạy code (Reproducible Runbook) sau khi hoàn thành task | - Là điểm nghẽn bàn giao trực tiếp giữa người phát triển và người tiếp quản.<br>- Input rõ ràng (code CLI + terminal log) giúp AI sinh kịch bản chạy chính xác.<br>- Đo lường được rõ ràng thời gian người viết và thời gian tái lập của đồng nghiệp. | - AI có nắm bắt đúng các thiết lập môi trường phức tạp (CUDA version, hardware đặc thù) nếu không được cấp log terminal hay không. |

### 2.2. Problem Cards chi tiết (lặp lại cho cả 3 cards)

---

#### Problem Card #1 — Tổng hợp công việc đã làm trong tuần và viết weekly report

```text
Problem 1 câu:
Mỗi chiều thứ Sáu, nhân viên/intern mất 45–60 phút để lục lại commit Git, task Jira và ghi chú rời rạc nhằm tổng hợp công việc trong tuần và viết weekly report nộp cho Leader.

Actor:
Nhân viên / Intern AI báo cáo cho Team Leader.

Thời điểm / bối cảnh:
Chiều thứ Sáu hàng tuần (16h30–17h30) trước hạn chót nộp báo cáo tuần của bộ phận.

Current workflow 3-7 bước:
1. Mở Git log, Jira và kênh chat để rà soát lại các task đã hoàn thành trong tuần.
2. Lọc ra các đầu việc chính, kết quả cụ thể (model score, PR merged) và các việc còn tồn đọng.
3. Mở file template Google Docs / Notion báo cáo tuần của nhóm.
4. Viết nội dung chi tiết: công việc hoàn thành, số liệu kết quả, khó khăn gặp phải và kế hoạch tuần tới.
5. Format lại văn bản, soát lỗi chính tả và gửi qua email / Slack cho Team Leader.

Bottleneck:
Bước 1 & 2 (thu thập, hồi tưởng lịch sử công việc rải rác) và Bước 4 (viết narrative từ ghi chú vụn vặt) mất khoảng 30 phút.

Impact:
Mất 45–60 phút/tuần cho mỗi nhân viên; báo cáo dễ thiếu sót các việc nhỏ nhưng quan trọng, gây khó khăn cho Leader trong việc nắm bắt tiến độ thực tế.

Success metric:
Giảm tổng thời gian tổng hợp và viết report từ 45–60 phút xuống dưới 15 phút; 100% các task quan trọng trong tuần được phản ánh chính xác.

Non-AI alternative:
Viết daily log cuối mỗi ngày hoặc dùng script export `git log --author`, nhưng vẫn phải tự phân loại, tóm tắt và format lại theo cấu trúc report.

AI hypothesis:
AI đọc danh sách git commit log + ghi chú thô trong tuần để tự động phân loại theo nhóm việc, định dạng chuẩn và draft nội dung báo cáo; nhân viên chỉ cần review và bổ sung.

Quick gut:
[ ] No AI / process fix
[ ] Rule
[x] Workflow
[ ] Agent
[ ] Chưa biết
```

**Draft workflow Card #1** (ASCII / Mermaid / ảnh đính kèm):

```text
CURRENT STATE — 50 phút

[1 Rà soát Git log, Jira, chat: 15'] → [2 Lọc việc & nhớ lại kết quả: 10'] → [3 Mở template Docs: 5'] → [4 Viết narrative & kết quả: 15']  <-- bottleneck → [5 Review & gửi: 5']

FUTURE STATE — 12 phút

[1 Export git log & gạch đầu dòng thô: 3'] → [2 AI gom nhóm & draft narrative: 2'] → [3 Nhân viên review & chỉnh sửa: 5']  <-- human boundary → [4 Gửi báo cáo: 2']

Fallback: nếu AI tổng hợp sai hoặc thiếu sót task, nhân viên mở trực tiếp danh sách ghi chú thô và tự điền vào template theo quy trình cũ.
```

File đính kèm (nếu vẽ riêng): `(Không cần ảnh riêng, sử dụng bản vẽ ASCII workflow ở trên)`

---

#### Problem Card #2 — Viết report trình bày các dataset có thể sử dụng

```text
Problem 1 câu:
Khi khảo sát dữ liệu cho bài toán AI mới, nhân viên/intern mất khoảng 40 phút để tổng hợp thông tin, cấu trúc metadata, giấy phép và so sánh ưu nhược điểm của các dataset vào một bản báo cáo khảo sát.

Actor:
Nhân viên / Intern AI thực hiện khảo sát dữ liệu cho dự án AI.

Thời điểm / bối cảnh:
Giai đoạn đầu của sprint hoặc khi nhận bài toán AI mới cần tìm kiếm dataset phù hợp (1–2 lần/tuần).

Current workflow 3-7 bước:
1. Đọc thông tin các dataset tiềm năng từ HuggingFace, Kaggle, GitHub, paper đính kèm.
2. Trích xuất thủ công các thông số: dung lượng, format, license, số lượng mẫu, nhãn, phân bố ngôn ngữ/domain.
3. Tổng hợp ưu/nhược điểm và độ phù hợp của từng dataset với bài toán hiện tại.
4. Lập bảng so sánh và viết đoạn đánh giá khuyến nghị (recommendation) vào tài liệu báo cáo.
5. Đọc lại, format bảng biểu và gửi cho Senior/Leader duyệt.

Bottleneck:
Bước 2 & 4 — trích xuất thủ công các trường metadata rời rạc từ các trang mô tả khác nhau và viết đoạn văn bản so sánh, khuyến nghị mất 20–25 phút.

Impact:
Mất 40 phút cho mỗi báo cáo khảo sát (1–2 lần/tuần); làm chậm tiến độ chốt nguồn dữ liệu để bắt đầu train/fine-tune; thông tin trích xuất thủ công dễ nhầm lẫn giấy phép bản quyền.

Success metric:
Giảm thời gian viết report từ 40 phút xuống còn 10–12 phút; thông tin so sánh chuẩn hóa 100% theo checklist (license, kích thước, format, rủi ro bản quyền).

Non-AI alternative:
Tạo Google Sheets template có các cột cố định để điền tay, nhưng vẫn tốn công copy-paste từng trường thông tin và tự viết nhận định tổng hợp.

AI hypothesis:
Cung cấp link/thông tin thô của các dataset, AI tự động trích xuất các trường thông tin chuẩn (kích thước, định dạng, license, domain), tạo bảng Markdown so sánh và đề xuất dự thảo nhận định ưu/nhược điểm.

Quick gut:
[ ] No AI / process fix
[ ] Rule
[x] Workflow
[ ] Agent
[ ] Chưa biết
```

**Draft workflow Card #2:**

```text
CURRENT STATE — 40 phút

[1 Đọc trang dataset/paper: 10'] → [2 Trích xuất thủ công metadata: 12'] → [3 Đánh giá ưu nhược điểm: 8'] → [4 Soạn báo cáo & bảng so sánh: 7']  <-- bottleneck → [5 Review & gửi: 3']

FUTURE STATE — 10 phút

[1 Thu thập link/text mô tả dataset: 3'] → [2 AI trích xuất metadata & draft so sánh: 2'] → [3 Nhân viên kiểm tra chéo license & số liệu: 4']  <-- human boundary → [4 Hoàn thiện & gửi: 1']

Fallback: nếu AI trích xuất sai license hoặc nhầm lẫn số liệu, nhân viên đối chiếu trực tiếp với trang nguồn và sửa tay trên bảng chuẩn.
```

File đính kèm: `(Không cần ảnh riêng, sử dụng bản vẽ ASCII workflow ở trên)`

---

#### Problem Card #3 — Soạn thảo README bàn giao & hướng dẫn chạy code (Reproducible Runbook) sau khi hoàn thành task

```text
Problem 1 câu:
Sau khi hoàn thành thử nghiệm/module AI, intern mất 45–60 phút để tra cứu log, soạn hướng dẫn cài đặt môi trường và viết câu lệnh chạy (CLI args) vào file README; do tốn công nên thường viết sơ sài khiến đồng nghiệp nhận lại mất 1–2 giờ debug lỗi môi trường/thiếu tham số.

Actor:
Intern AI (người bàn giao code) / Đồng nghiệp trong team AI (người tiếp quản codebase, tái lập kết quả thử nghiệm hoặc review PR).

Thời điểm / bối cảnh:
Cuối sprint hoặc ngay khi hoàn thành một module/thử nghiệm mô hình cần merge vào main repository và bàn giao cho người khác chạy tiếp.

Current workflow 3-7 bước:
1. Rà soát file code chính (main.py, train.py), file config và lịch sử terminal để nhớ lại các thư viện mới cài cùng các flags/arguments đã dùng.
2. Xuất danh sách dependencies (pip freeze / environment.yml) và lọc bỏ các thư viện thừa.
3. Soạn thảo cấu trúc file README: yêu cầu môi trường phần cứng/CUDA, các bước cài đặt dependencies.
4. Viết giải thích chi tiết ý nghĩa từng tham số dòng lệnh (CLI flags/hyperparameters) và cú pháp câu lệnh chạy mẫu kèm ví dụ input/output.
5. Soát lại định dạng Markdown và đẩy code lên Git (thường bỏ qua bước chạy thử trên môi trường sạch vì ngại tốn thời gian).

Bottleneck:
Bước 3 & 4 — mất 30–40 phút để viết narrative giải thích từng tham số CLI, sắp xếp thứ tự các bước chạy và căn chỉnh định dạng README; đây là bước tốn nhiều công sức gõ văn bản nhất nên hay bị làm qua loa.

Impact:
Tác giả mất 45–60 phút/lần bàn giao; nếu viết ẩu hoặc thiếu tham số, người tiếp quản repo mất 1–2 giờ vật lộn với lỗi xung đột version CUDA/package hoặc không tái lập được kết quả của mô hình.

Success metric:
Giảm thời gian soạn thảo README bàn giao từ 45–60 phút xuống dưới 15 phút; người nhận lại repo có thể chạy thành công lệnh mẫu trong vòng 10 phút ngay lần đầu mà không cần hỏi lại tác giả.

Non-AI alternative:
Sử dụng template README có sẵn (cookiecutter) kết hợp `argparse --help > README.md`; tuy nhiên text xuất ra từ CLI thô ráp, không có bối cảnh bài toán, không có thứ tự các bước chạy thực tế và vẫn phải tự viết hướng dẫn môi trường.

AI hypothesis:
Cung cấp code chứa module CLI (argparse/click), log terminal chạy thành công gần nhất và file dependencies; AI tự động trích xuất bảng tham số, sinh kịch bản chạy mẫu chuẩn xác (Runbook) kèm lưu ý về môi trường; tác giả kiểm thử lại lệnh trong môi trường sạch trước khi commit.

Quick gut:
[ ] No AI / process fix
[ ] Rule
[x] Workflow
[ ] Agent
[ ] Chưa biết
```

**Draft workflow Card #3:**

```text
CURRENT STATE — 55 phút

[1 Rà soát code & lịch sử terminal: 10'] → [2 Lọc dependencies & config: 10'] → [3 Viết hướng dẫn setup & giải thích CLI args: 25']  <-- bottleneck → [4 Format README & đẩy Git: 10']

FUTURE STATE — 14 phút

[1 Cung cấp code CLI + log terminal + env file: 3'] → [2 AI trích xuất bảng args & draft Runbook: 2'] → [3 Tác giả chạy smoke test lệnh mẫu trên env sạch: 7']  <-- human boundary → [4 Commit & bàn giao repo: 2']

Fallback: nếu AI format sai cú pháp lệnh hoặc hiểu sai tham số, tác giả dùng template README cố định, chỉ lấy bảng mô tả tham số của AI và paste trực tiếp câu lệnh đã test từ terminal history vào.
```

File đính kèm: `(Không cần ảnh riêng, sử dụng bản vẽ ASCII workflow ở trên)`

---

### 2.3. Card muốn pitch nhất (chuẩn bị 2 phút)

**Card tôi muốn pitch nhất:**

```text
Problem Card #3 — Soạn thảo README bàn giao & hướng dẫn chạy code (Reproducible Runbook) sau khi hoàn thành task
```

**Vì sao (2-3 câu: workflow gì, số đo gì, impact gì):**

```text
- Workflow: Quy trình bàn giao mã nguồn thử nghiệm AI từ tác giả sang đồng nghiệp tiếp quản (rà soát tham số, thiết lập môi trường và viết kịch bản chạy mẫu).
- Số đo: Giảm thời gian tác giả viết tài liệu bàn giao từ 45–60 phút xuống dưới 15 phút; người nhận chạy thành công lệnh mẫu trong vòng 10 phút ngay lần đầu.
- Impact: Xóa bỏ điểm nghẽn "code chỉ chạy được trên máy người viết", tiết kiệm 1–2 giờ debug lỗi môi trường/thiếu cờ tham số cho đồng nghiệp, chuẩn hóa tài liệu kỹ thuật của nhóm.
```

**Câu hỏi tôi muốn nhóm challenge (1-2 câu hỏi đúng chỗ yếu):**

```text
1. Nếu dự án có cấu hình phần cứng đặc thù (CUDA version, GPU VRAM, checkpoint weights nặng nằm ở server nội bộ), làm sao AI biết để đưa vào README nếu tác giả quên cung cấp trong prompt?
2. Một template README cố định kèm script pip freeze / Makefile (No-AI / Rule) liệu đã đủ giải quyết bài toán bàn giao chưa, AI thực sự tạo ra khác biệt cốt lõi ở bước nào?
```

**AI phản biện Card (nếu có):**
- Điểm yếu AI chỉ ra:
  + Card ban đầu bị quá rộng và phân tán. 
  + Thiếu Human verification boundary: Tác giả không có bước tái kiểm tra lệnh AI sinh ra trên môi trường sạch trước khi commit, dễ chuyển rủi ro sang cho người nhận.
- Tôi sửa gì:
  + Tách bỏ hoàn toàn phần viết docstring chi tiết (để linter/IDE xử lý cục bộ), tập trung duy nhất vào bài toán: Soạn thảo README hướng dẫn thiết lập môi trường và kịch bản chạy thử nghiệm (Reproducible Runbook).
  + Bổ sung Human Boundary rõ ràng trong Future Workflow: Tác giả dành 5–7 phút chạy "smoke test" câu lệnh mẫu do AI sinh ra trên môi trường ảo sạch trước khi commit repo.

### Self-check nộp phần 01
- [x] Có 5+ problems + top 3 Cards đủ field
- [x] Mỗi Card có workflow trước/sau + bottleneck + metric + fallback
- [x] Đã chọn 1 card pitch + câu hỏi challenge

# 01 — Individual Problem Scan

> Bản nháp theo case: người vận hành homestay. Các mốc có dạng `[cần đo]` phải được thay bằng log/số liệu thật trước khi nộp.

## Thông tin cá nhân

- Họ và tên: Nguyễn Lê Phúc Thắng
- Mã học viên: 2A202602638
- Vai trò / bối cảnh: Chủ hoặc người vận hành homestay.
- Công việc hằng tuần:
  - Trả lời khách qua Facebook, Zalo và nền tảng đặt phòng.
  - Cập nhật phòng trống, giá và xác nhận đặt phòng.
  - Điều phối dọn phòng, kiểm tra tiện nghi và xử lý sự cố.
  - Theo dõi doanh thu, chi phí và công suất phòng.

---

## Phase 1 — Scan 5+ problems

| # | Lăng kính | Problem quan sát được | Ai chịu ảnh hưởng? | Dấu hiệu thật cần ghi nhận |
|---|---|---|---|---|
| 1 | Lặp lại | Khách hỏi lặp lại về giá, loại phòng, giờ check-in/out, địa chỉ, chỗ đậu xe và tiện nghi qua nhiều kênh. | Khách; người vận hành homestay. | Đếm số tin nhắn FAQ/ngày trong 7 ngày và bấm giờ trả lời: 1000 câu/ngày, 180 phút/ngày. |
| 2 | Tốn thời gian | Cập nhật lịch phòng giữa Booking, Facebook/Zalo và lịch nội bộ dễ bị chậm hoặc lệch. | Khách; người vận hành; nhân viên dọn phòng. | Ghi số lần phải kiểm tra lại lịch hoặc suýt/trùng phòng trong 1 tháng: 20. |
| 3 | Pain từ người khác | Nhân viên không nắm rõ phòng nào đã dọn xong, thiếu đồ hay cần bảo trì. | Nhân viên dọn phòng; khách check-in; người vận hành. | Ghi số lần phải nhắn/gọi lại để hỏi trạng thái phòng trong 1 tuần: 30. |
| 4 | Tốn thời gian | Tổng hợp doanh thu, chi phí và công suất phòng từ nhiều nguồn vào cuối tuần/tháng. | Người vận hành homestay. | Bấm giờ 2 lần làm báo cáo và ghi số lần phải sửa số liệu: 60 phút/lần. |
| 5 | AI có thể tốt hơn | Khách báo lỗi Wi-Fi, TV, khóa cửa hoặc điều hòa nhưng mô tả ban đầu thiếu thông tin; người vận hành phải hỏi lại và điều phối người sửa chữa. | Khách; người vận hành; kỹ thuật viên. | Ghi số sự cố lặp lại và thời gian xử lý trong 1 tháng: 3 sự cố và 60 phút 1 lần . |

**AI đã dùng ở Phase 1:**

- Prompt đã hỏi: “Tôi vận hành homestay. Hãy gợi ý các vấn đề lặp lại, tốn thời gian hoặc AI có thể hỗ trợ; chỉ rõ actor, workflow, bottleneck và cách đo.”
- Ý dùng được: phân loại các vấn đề theo workflow để dễ quan sát và đo lường.
- Ý bỏ: các đề xuất quá rộng như “xây trợ lý AI quản lý toàn bộ homestay”, vì chưa có workflow, dữ liệu hay boundary rõ.

---

## Phase 2 — Top 3 Problem Cards

### 2.1. Chọn top 3

| Rank | Problem | Vì sao chọn | Điều còn chưa chắc |
|---|---|---|---|
| 1 | Khách hỏi thông tin lặp lại qua nhiều kênh | Actor và workflow rõ; lặp lại thường xuyên; có thể đo thời gian phản hồi và thời gian vận hành. | Cần log tần suất câu hỏi và kiểm tra FAQ/rule có xử lý đủ không. |
| 2 | Lịch phòng có nguy cơ lệch giữa các kênh | Ảnh hưởng trực tiếp tới booking và trải nghiệm khách; có hậu quả rõ nếu sai. | Cần biết các kênh hiện có hỗ trợ đồng bộ hay chưa. |
| 3 | Theo dõi trạng thái dọn phòng và bảo trì | Workflow có nhiều handoff; có thể giảm việc gọi/nhắn lặp lại. | Cần xác nhận đây có phải pain lớn của nhân viên hay chỉ là vấn đề thỉnh thoảng. |

### 2.2. Problem Card #1 — Khách hỏi thông tin lặp lại qua nhiều kênh

**Problem 1 câu:**
Khách tiềm năng thường hỏi lặp lại về giá, phòng trống, giờ check-in/check-out, địa chỉ, chỗ đậu xe và tiện nghi qua Facebook, Zalo và nền tảng đặt phòng, khiến người vận hành phải trả lời thủ công nhiều lần và có nguy cơ phản hồi chậm vào giờ cao điểm hoặc ngoài giờ.

**Actor:**
Khách đang tìm phòng và người vận hành homestay.

**Thời điểm / bối cảnh:**
Trước khi khách đặt phòng; tập trung vào buổi tối, cuối tuần hoặc lúc người vận hành không thể trả lời ngay.

**Current workflow:**

```text
1. Khách gửi tin nhắn qua Facebook, Zalo hoặc nền tảng booking.
2. Người vận hành mở từng kênh và đọc tin.
3. Kiểm tra giá, lịch trống, loại phòng và quy định liên quan.
4. Soạn câu trả lời rồi gửi khách.
5. Khách hỏi thêm hoặc muốn đặt; người vận hành tiếp tục tư vấn/xác nhận.
```

**Bottleneck:**
Bước 2-4 lặp lại với các câu hỏi giống nhau. Người vận hành phải chuyển giữa nhiều kênh, kiểm tra thông tin rồi tự soạn lại câu trả lời; vào giờ cao điểm hoặc ngoài giờ, thời gian phản hồi tăng và dễ sót tin.

**Impact:**
- Mất 180 phút/ngày cho các câu hỏi FAQ.
- Khách có thể rời đi nếu không nhận được phản hồi sớm.
- Thông tin trả lời có thể thiếu nhất quán nếu giá/quy định thay đổi.

**Success metric:**
- Baseline: đo trong 7 ngày số câu FAQ, thời gian phản hồi đầu tiên và thời gian trả lời thủ công.
- Mục tiêu pilot: ít nhất 80% câu hỏi FAQ nhận câu trả lời đầu tiên trong dưới 5 phút; giảm ít nhất 30% thời gian trả lời FAQ thủ công.
- Guardrail: không tăng số câu khách phải hỏi lại do câu trả lời thiếu/sai.

**Non-AI alternative:**
Tạo FAQ, tin nhắn trả lời nhanh, menu/nút chọn hoặc chatbot theo kịch bản. Đây là phương án cần thử trước vì các câu hỏi phổ biến có nội dung tương đối cố định.

**AI hypothesis:**
Sau khi FAQ và chính sách được chuẩn hóa, AI có thể phân loại câu hỏi viết tự do, tạo câu trả lời dựa trên thông tin đã duyệt và chuyển trường hợp không chắc chắn cho người vận hành. AI không được tự xác nhận phòng trống, chốt giá đặc biệt hay nhận thanh toán.

**Quick gut:**
`[x] Rule` cho FAQ cố định; có thể nâng thành `Workflow` có AI hỗ trợ sau khi đo được các câu hỏi ngoài FAQ. Chưa cần Agent.

### Draft current workflow

```text
CURRENT STATE — thời gian cần đo trong 7 ngày

[Khách nhắn ở Facebook/Zalo/Booking]
→ [Người vận hành mở kênh và đọc]
→ [Kiểm tra giá, lịch, quy định]
→ [Tự soạn câu trả lời]  <-- bottleneck
→ [Khách hỏi thêm / đặt phòng]
→ [Người vận hành xác nhận]
```

### Draft future workflow

```text
FUTURE STATE — pilot FAQ

[Khách nhắn]
→ [Rule nhận diện menu/từ khóa FAQ]
→ [Gửi câu trả lời đã duyệt]
→ [Nếu hỏi phòng trống, giá đặc biệt, khiếu nại hoặc bot không chắc]
→ [Chuyển người vận hành]
→ [Người vận hành kiểm tra và trả lời cuối]

Human boundary: chỉ người vận hành xác nhận booking, giá và ngoại lệ.
Fallback: bot không chắc hoặc dữ liệu cũ → không tự đoán; báo khách chờ người vận hành hỗ trợ.
```

---

#### Problem Card #2 — Lịch phòng có nguy cơ lệch giữa các kênh

**Problem 1 câu:**
Người vận hành phải kiểm tra và cập nhật lịch phòng thủ công giữa Booking, Facebook/Zalo và lịch nội bộ, nên có nguy cơ báo sai phòng trống hoặc xử lý booking chậm.

**Actor:**
Người vận hành homestay; khách đặt phòng; nhân viên dọn phòng.

**Thời điểm / bối cảnh:**
Khi có khách hỏi phòng trống hoặc đặt phòng qua bất kỳ kênh nào, đặc biệt khi nhiều yêu cầu đến gần nhau.

**Current workflow:**

```text
1. Khách hỏi hoặc gửi yêu cầu đặt phòng từ một kênh.
2. Người vận hành kiểm tra lịch ở kênh đó.
3. Người vận hành đối chiếu Booking, Facebook/Zalo và lịch nội bộ.
4. Cập nhật lịch sau khi xác nhận booking.
5. Báo thông tin phòng cho nhân viên dọn phòng khi cần.
```

**Bottleneck:**
Bước 2-4 yêu cầu chuyển qua lại giữa nhiều kênh và cập nhật thủ công. Nếu cập nhật chậm hoặc quên một kênh, người vận hành có thể báo nhầm trạng thái phòng hoặc phải nhắn lại cho khách.

**Impact:**
- Tốn 10 phút cho mỗi booking cần đối chiếu nhiều kênh.
- Có nguy cơ xảy ra lỗi lệch lịch/trùng phòng; cần ghi số lần trong 20 tháng gần nhất.
- Khách và nhân viên dọn phòng nhận thông tin chậm hoặc không nhất quán.

**Success metric:**
- Baseline: ghi thời gian xử lý 10 yêu cầu booking và số lần phải sửa/đối chiếu lại lịch trong 1 tháng.
- Mục tiêu pilot: giảm thời gian kiểm tra trạng thái phòng cho một yêu cầu xuống dưới 30 giây; không phát sinh lỗi báo sai phòng trống trong thời gian pilot.

**Non-AI alternative:**
Dùng một lịch trung tâm, checklist cập nhật sau booking và quy ước trạng thái phòng thống nhất. Nếu các nền tảng hỗ trợ, cân nhắc channel manager để đồng bộ lịch.

**AI hypothesis:**
AI chỉ nên hỗ trợ đọc nội dung booking tự do và tóm tắt các yêu cầu cần cập nhật. Trạng thái phòng và thao tác xác nhận phải lấy từ nguồn dữ liệu chính xác, không để AI tự suy đoán.

**Quick gut:**
`[x] Workflow` — trước hết là một quy trình đồng bộ dữ liệu và checklist; chưa đủ căn cứ để dùng Agent.

**Draft workflow Card #2:**

```text
CURRENT STATE — thời gian cần đo

[Khách hỏi/đặt phòng ở một kênh]
→ [Mở từng kênh để kiểm tra lịch]
→ [Đối chiếu với lịch nội bộ]  <-- bottleneck
→ [Xác nhận với khách]
→ [Cập nhật từng kênh]
→ [Báo nhân viên dọn phòng]

FUTURE STATE — pilot quy trình tập trung

[Yêu cầu booking]
→ [Kiểm tra lịch trung tâm]
→ [Rule/checklist kiểm tra trạng thái]
→ [Người vận hành xác nhận]
→ [Cập nhật và thông báo nhân viên]

Human boundary: người vận hành luôn kiểm tra lịch thực tế trước khi xác nhận với khách.
Fallback: lịch trung tâm có dấu hiệu chưa đồng bộ → kiểm tra lại tất cả kênh trước khi chốt.
```

---

#### Problem Card #3 — Theo dõi trạng thái dọn phòng và bảo trì

**Problem 1 câu:**
Người vận hành khó biết phòng nào đã dọn xong, còn thiếu vật dụng hoặc có thiết bị cần bảo trì khi việc bàn giao chủ yếu qua tin nhắn, khiến phòng có thể chưa sẵn sàng lúc khách check-in.

**Actor:**
Nhân viên dọn phòng; người vận hành homestay; khách sắp check-in.

**Thời điểm / bối cảnh:**
Sau khi khách check-out và trước thời điểm khách tiếp theo check-in.

**Current workflow:**

```text
1. Khách check-out hoặc người vận hành nhận thông báo check-out.
2. Người vận hành nhắn/gọi nhân viên để giao việc dọn phòng.
3. Nhân viên dọn phòng và kiểm tra vật dụng/thiết bị.
4. Nhân viên báo lại bằng tin nhắn hoặc cuộc gọi.
5. Người vận hành hỏi lại nếu thiếu thông tin hoặc cần kiểm tra.
6. Người vận hành xác nhận phòng sẵn sàng cho khách tiếp theo.
```

**Bottleneck:**
Trạng thái phòng không được cập nhật ở một nơi chung. Người vận hành phải hỏi lại liệu phòng đã dọn xong chưa, có thiếu đồ không hoặc có lỗi thiết bị không; thông tin dễ bị sót khi có nhiều phòng.

**Impact:**
- Mất 7-10 lần gọi/nhắn lại mỗi tuần để kiểm tra trạng thái phòng.
- Có nguy cơ phát hiện thiếu đồ hoặc hỏng thiết bị muộn, sát giờ khách check-in.
- Nhân viên và người vận hành không có cùng một trạng thái phòng để theo dõi.

**Success metric:**
- Baseline: theo dõi trong 1 tuần số phòng sẵn sàng đúng giờ, số lần hỏi lại và số lỗi phát hiện sau khi báo đã hoàn tất.
- Mục tiêu pilot: 100% phòng có trạng thái dọn phòng trước giờ check-in; giảm ít nhất 50% số lần hỏi lại giữa người vận hành và nhân viên.

**Non-AI alternative:**
Dùng bảng trạng thái chung hoặc form checklist theo phòng: cần dọn, đang dọn, chờ kiểm tra, sẵn sàng, cần bảo trì. Đây là phương án nên thử đầu tiên.

**AI hypothesis:**
AI có thể tóm tắt tin nhắn bàn giao hoặc phát hiện các nội dung có dấu hiệu “thiếu”, “hỏng”, “cần sửa”. AI không được tự đánh dấu phòng sẵn sàng; nhân viên hoặc người vận hành phải xác nhận bằng checklist.

**Quick gut:**
`[x] Rule / Workflow` — quy trình và checklist trạng thái rõ ràng có thể giải quyết phần lớn vấn đề; AI chỉ là hỗ trợ phụ.

**Draft workflow Card #3:**

```text
CURRENT STATE — thời gian cần đo

[Khách check-out]
→ [Người vận hành nhắn/gọi giao việc]
→ [Nhân viên dọn phòng]
→ [Nhân viên báo bằng tin nhắn]
→ [Người vận hành hỏi lại / kiểm tra]  <-- bottleneck
→ [Xác nhận sẵn sàng]

FUTURE STATE — pilot bảng trạng thái + checklist

[Khách check-out]
→ [Rule tạo việc dọn phòng]
→ [Nhân viên cập nhật checklist/trạng thái]
→ [Người vận hành kiểm tra điểm bất thường]
→ [Xác nhận phòng sẵn sàng]

Human boundary: chỉ nhân viên hoặc người vận hành được đánh dấu “sẵn sàng”.
Fallback: không có checklist hoàn chỉnh hoặc có báo lỗi → phòng giữ trạng thái “chờ kiểm tra”, không giao khách vào.
```

File đính kèm (nếu vẽ riêng): `01-individual-problem-scan-workflow-card-3.png`

### 2.3. Card muốn pitch nhất

**Card tôi muốn pitch nhất:**

```text
Khách hỏi thông tin lặp lại qua nhiều kênh.
```

**Vì sao:**

```text
Đây là workflow tôi trực tiếp nhìn thấy: khách nhắn, tôi kiểm tra thông tin rồi trả lời. Bước soạn và gửi lại cùng một thông tin lặp lại, trong khi thời gian phản hồi có thể đo rõ bằng log tin nhắn. Tôi muốn kiểm tra xem FAQ/rule đã đủ hay chỉ một phần nhỏ câu hỏi mới cần AI hỗ trợ.
```

**Câu hỏi tôi muốn nhóm challenge:**

```text
1. Có evidence nào cho thấy phản hồi chậm thực sự làm mất booking, hay đây chỉ là cảm nhận của tôi?
2. FAQ và trả lời nhanh có giải được 70-80% câu hỏi chưa, hay có đủ câu hỏi tự do để dùng AI Workflow?
```

**AI phản biện Card:**

- Điểm yếu AI chỉ ra: chưa có baseline tần suất và thời gian phản hồi; dễ nhảy thẳng sang chatbot AI trong khi rule có thể đủ.
- Tôi sửa gì: dùng log 7 ngày để phân nhóm câu hỏi, đo thời gian và thử FAQ/rule trước; giữ AI ở scope trả lời nháp có nguồn đã duyệt.

### Self-check nộp phần 01

- [x] Có 5 problems và top 3 Problem Cards.
- [x] Card #1 có workflow trước/sau, bottleneck, metric và fallback.
- [x] Đã chọn 1 card pitch và câu hỏi challenge.
Add-Type -AssemblyName System.Drawing

$outputPath = Join-Path $PSScriptRoot '01-individual-problem-scan-workflow-card-1.png'
$width = 1800
$height = 2500
$bitmap = New-Object System.Drawing.Bitmap($width, $height)
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)
$graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$graphics.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::ClearTypeGridFit
$graphics.Clear([System.Drawing.Color]::FromArgb(247, 249, 252))

$fontFamily = 'Segoe UI'
$titleFont = New-Object System.Drawing.Font($fontFamily, 42, [System.Drawing.FontStyle]::Bold)
$headingFont = New-Object System.Drawing.Font($fontFamily, 27, [System.Drawing.FontStyle]::Bold)
$bodyFont = New-Object System.Drawing.Font($fontFamily, 23, [System.Drawing.FontStyle]::Regular)
$smallFont = New-Object System.Drawing.Font($fontFamily, 20, [System.Drawing.FontStyle]::Regular)
$tinyFont = New-Object System.Drawing.Font($fontFamily, 18, [System.Drawing.FontStyle]::Regular)
$whiteBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::White)
$textBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(25, 37, 56))
$mutedBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(76, 91, 112))
$blueBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(24, 86, 164))
$lightBlueBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(230, 241, 255))
$orangeBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(255, 236, 201))
$redBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(255, 234, 234))
$greenBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(225, 246, 235))
$grayBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(237, 241, 247))
$borderPen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(190, 204, 222), 2)
$bluePen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(24, 86, 164), 5)
$orangePen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(218, 137, 16), 4)
$greenPen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(36, 131, 81), 4)
$redPen = New-Object System.Drawing.Pen([System.Drawing.Color]::FromArgb(189, 64, 64), 4)
$format = New-Object System.Drawing.StringFormat
$format.Alignment = [System.Drawing.StringAlignment]::Center
$format.LineAlignment = [System.Drawing.StringAlignment]::Center
$leftFormat = New-Object System.Drawing.StringFormat
$leftFormat.Alignment = [System.Drawing.StringAlignment]::Near
$leftFormat.LineAlignment = [System.Drawing.StringAlignment]::Center

function Draw-RoundRect {
    param(
        [System.Drawing.RectangleF]$rect,
        [System.Drawing.Brush]$brush,
        [System.Drawing.Pen]$pen,
        [int]$radius = 22
    )
    $path = New-Object System.Drawing.Drawing2D.GraphicsPath
    $diameter = $radius * 2
    $path.AddArc($rect.X, $rect.Y, $diameter, $diameter, 180, 90)
    $path.AddArc($rect.Right - $diameter, $rect.Y, $diameter, $diameter, 270, 90)
    $path.AddArc($rect.Right - $diameter, $rect.Bottom - $diameter, $diameter, $diameter, 0, 90)
    $path.AddArc($rect.X, $rect.Bottom - $diameter, $diameter, $diameter, 90, 90)
    $path.CloseFigure()
    $graphics.FillPath($brush, $path)
    $graphics.DrawPath($pen, $path)
    $path.Dispose()
}

function Draw-Text {
    param(
        [string]$text,
        [System.Drawing.Font]$font,
        [System.Drawing.Brush]$brush,
        [System.Drawing.RectangleF]$rect,
        [System.Drawing.StringFormat]$stringFormat
    )
    $graphics.DrawString($text, $font, $brush, $rect, $stringFormat)
}

function Draw-Arrow {
    param(
        [float]$x,
        [float]$y1,
        [float]$y2,
        [System.Drawing.Pen]$pen
    )
    $graphics.DrawLine($pen, $x, $y1, $x, $y2 - 17)
    $graphics.DrawLine($pen, $x, $y2 - 17, $x - 10, $y2 - 31)
    $graphics.DrawLine($pen, $x, $y2 - 17, $x + 10, $y2 - 31)
}

function Draw-Node {
    param(
        [float]$x,
        [float]$y,
        [float]$w,
        [float]$h,
        [string]$title,
        [string]$detail,
        [System.Drawing.Brush]$fill,
        [System.Drawing.Pen]$pen
    )
    $rect = [System.Drawing.RectangleF]::new($x, $y, $w, $h)
    Draw-RoundRect $rect $fill $pen
    $titleRect = [System.Drawing.RectangleF]::new([float]($x + 24), [float]($y + 13), [float]($w - 48), 40)
    $detailRect = [System.Drawing.RectangleF]::new([float]($x + 30), [float]($y + 58), [float]($w - 60), [float]($h - 70))
    Draw-Text $title $headingFont $textBrush $titleRect $format
    Draw-Text $detail $smallFont $mutedBrush $detailRect $format
}

# Header
$graphics.FillRectangle($blueBrush, 0, 0, $width, 170)
Draw-Text 'WORKFLOW CARD #1' $smallFont $whiteBrush (New-Object System.Drawing.RectangleF(70, 26, 500, 34)) $leftFormat
Draw-Text 'Khách hỏi thông tin lặp lại qua nhiều kênh' $titleFont $whiteBrush (New-Object System.Drawing.RectangleF(70, 67, 1660, 66)) $leftFormat

# Problem statement
$problemRect = New-Object System.Drawing.RectangleF(70, 210, 1660, 190)
Draw-RoundRect $problemRect $lightBlueBrush $borderPen
Draw-Text 'Vấn đề' $headingFont $blueBrush (New-Object System.Drawing.RectangleF(105, 230, 220, 38)) $leftFormat
Draw-Text 'Khách hỏi lặp lại về giá, phòng trống, giờ check-in/out, địa chỉ, chỗ đậu xe và tiện nghi qua Facebook, Zalo và nền tảng booking. Người vận hành phải kiểm tra rồi tự trả lời nhiều lần.' $bodyFont $textBrush (New-Object System.Drawing.RectangleF(105, 274, 1590, 100)) $leftFormat

# Current state heading
Draw-Text 'CURRENT STATE — trả lời thủ công, thời gian cần đo trong 7 ngày' $headingFont $textBrush (New-Object System.Drawing.RectangleF(70, 445, 1660, 45)) $leftFormat
Draw-Text 'Điểm nghẽn: chuyển giữa nhiều kênh, kiểm tra thông tin và soạn lại các câu trả lời giống nhau.' $smallFont $mutedBrush (New-Object System.Drawing.RectangleF(70, 495, 1660, 35)) $leftFormat

$nodeX = 350; $nodeW = 1100; $nodeH = 106
$currentY = @(560, 702, 844, 986, 1128)
Draw-Node -x $nodeX -y $currentY[0] -w $nodeW -h $nodeH -title '1. Khách gửi tin nhắn' -detail 'Facebook • Zalo • nền tảng booking' -fill $grayBrush -pen $borderPen
Draw-Arrow 900 ($currentY[0] + $nodeH) $currentY[1] $bluePen
Draw-Node -x $nodeX -y $currentY[1] -w $nodeW -h $nodeH -title '2. Người vận hành mở và đọc từng kênh' -detail 'Phải kiểm tra nhiều inbox' -fill $grayBrush -pen $borderPen
Draw-Arrow 900 ($currentY[1] + $nodeH) $currentY[2] $bluePen
Draw-Node -x $nodeX -y $currentY[2] -w $nodeW -h $nodeH -title '3. Kiểm tra giá, lịch trống, loại phòng và quy định' -detail 'Thông tin có thể nằm ở nhiều nơi' -fill $orangeBrush -pen $orangePen
Draw-Arrow 900 ($currentY[2] + $nodeH) $currentY[3] $orangePen
Draw-Node -x $nodeX -y $currentY[3] -w $nodeW -h $nodeH -title '4. Tự soạn và gửi câu trả lời  ← BOTTLENECK' -detail 'Câu hỏi quen thuộc nhưng lặp lại; dễ chậm hoặc sót tin vào giờ cao điểm' -fill $orangeBrush -pen $orangePen
Draw-Arrow 900 ($currentY[3] + $nodeH) $currentY[4] $bluePen
Draw-Node -x $nodeX -y $currentY[4] -w $nodeW -h $nodeH -title '5. Tư vấn tiếp hoặc xác nhận booking' -detail 'Người vận hành vẫn là người chốt thông tin cuối' -fill $grayBrush -pen $borderPen

# Future state
Draw-Text 'FUTURE STATE — pilot FAQ / Rule trước, chưa cần Agent' $headingFont $textBrush (New-Object System.Drawing.RectangleF(70, 1300, 1660, 45)) $leftFormat
Draw-Text 'Mục tiêu: tự động hóa câu hỏi cố định; chuyển ngoại lệ cho người vận hành.' $smallFont $mutedBrush (New-Object System.Drawing.RectangleF(70, 1350, 1660, 35)) $leftFormat

$futureY = @(1415, 1557, 1699, 1841, 1983)
Draw-Node -x $nodeX -y $futureY[0] -w $nodeW -h $nodeH -title '1. Khách gửi tin nhắn' -detail 'Facebook • Zalo • nền tảng booking' -fill $grayBrush -pen $borderPen
Draw-Arrow 900 ($futureY[0] + $nodeH) $futureY[1] $greenPen
Draw-Node -x $nodeX -y $futureY[1] -w $nodeW -h $nodeH -title '2. Rule nhận diện menu / từ khóa FAQ' -detail 'Ví dụ: giờ check-in, địa chỉ, chỗ đậu xe, tiện nghi' -fill $greenBrush -pen $greenPen
Draw-Arrow 900 ($futureY[1] + $nodeH) $futureY[2] $greenPen
Draw-Node -x $nodeX -y $futureY[2] -w $nodeW -h $nodeH -title '3. Gửi câu trả lời đã được duyệt' -detail 'Nội dung lấy từ FAQ và chính sách hiện hành' -fill $greenBrush -pen $greenPen
Draw-Arrow 900 ($futureY[2] + $nodeH) $futureY[3] $bluePen
Draw-Node -x $nodeX -y $futureY[3] -w $nodeW -h $nodeH -title '4. Ngoại lệ → chuyển người vận hành' -detail 'Phòng trống • giá đặc biệt • khiếu nại • bot không chắc' -fill $lightBlueBrush -pen $bluePen
Draw-Arrow 900 ($futureY[3] + $nodeH) $futureY[4] $bluePen
Draw-Node -x $nodeX -y $futureY[4] -w $nodeW -h $nodeH -title '5. Người vận hành kiểm tra và trả lời cuối' -detail 'HUMAN BOUNDARY: chỉ con người xác nhận booking, giá và ngoại lệ' -fill $lightBlueBrush -pen $bluePen

# Metrics, boundary, fallback
$leftBox = New-Object System.Drawing.RectangleF(70, 2150, 790, 235)
$rightBox = New-Object System.Drawing.RectangleF(940, 2150, 790, 235)
Draw-RoundRect $leftBox $redBrush $redPen
Draw-Text 'ĐO THÀNH CÔNG' $headingFont $textBrush (New-Object System.Drawing.RectangleF(105, 2175, 720, 38)) $leftFormat
Draw-Text "• Đếm số FAQ và thời gian phản hồi trong 7 ngày`n• ≥80% FAQ có phản hồi đầu tiên dưới 5 phút`n• Giảm ≥30% thời gian trả lời FAQ thủ công`n• Guardrail: không tăng câu khách phải hỏi lại" $tinyFont $textBrush (New-Object System.Drawing.RectangleF(105, 2220, 720, 142)) $leftFormat
Draw-RoundRect $rightBox $orangeBrush $orangePen
Draw-Text 'FALLBACK / RỦI RO' $headingFont $textBrush (New-Object System.Drawing.RectangleF(975, 2175, 720, 38)) $leftFormat
Draw-Text "• FAQ cũ hoặc bot không chắc → không tự đoán`n• Báo khách chờ người vận hành hỗ trợ`n• Không tự xác nhận phòng trống, chốt giá hay nhận thanh toán`n• Nếu Rule xử lý chưa đủ → mới xem xét AI Workflow" $tinyFont $textBrush (New-Object System.Drawing.RectangleF(975, 2220, 720, 142)) $leftFormat

Draw-Text 'Nguồn: Individual Problem Scan — Card #1 | Các số liệu thực tế cần được bổ sung sau khi theo dõi.' $tinyFont $mutedBrush (New-Object System.Drawing.RectangleF(70, 2425, 1660, 35)) $leftFormat

$bitmap.SetResolution(150, 150)
$bitmap.Save($outputPath, [System.Drawing.Imaging.ImageFormat]::Png)

$graphics.Dispose()
$bitmap.Dispose()

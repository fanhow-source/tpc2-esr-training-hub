# 3DLA MoM 自動化 - 快速指南

大家好，為了讓每天產生 ESR 3DLA MoM 稍微輕鬆一點，這個資料夾已經加入自動產生 Word 報告的功能。

它的目的不是取代大家的判斷，而是先把重複、容易漏的小動作做好，讓我們把時間留給真正重要的事：確認內容、風險和介面資訊是否正確。

## 使用前請先確認

- 今日或明日的 `3DLA Overview` Excel 已經完成。
- Overview Excel 放在：
  `..\Overview`
- Word 請先關閉，避免檔案被鎖住。
- 如果 Excel 正在編輯 Overview，也建議先儲存。

## 日常使用方式

1. 先完成並儲存明天的 Overview Excel。
2. 關閉所有 Word 視窗。
3. 在 MoM 資料夾雙擊：
   `Close Word First - Generate Tomorrow 3DLA MoM.cmd`
4. 程式會自動產生明天的 MoM Word。
5. 開啟新 Word 後，請快速檢查：
   - Date
   - Meeting no.
   - `5. Attachments - A. 3DLA Overview`
   - `B. HV System Overview`
6. 確認內容後，再手動補充會議內容或輸出 PDF。

## 這個程式會自動做什麼

- 找到合適的前一份 MoM Word 作為模板。
- 依日期產生新的檔名，例如：
  `OWP2-ESR-3DLA-MOM-260704-01.docx`
- 自動更新 Word 裡的：
  - Date
  - Meeting no.
- 從 Overview 資料夾找到目標日期的 Excel，例如：
  `OWP2-ESR-3DLA-Overview-20260704.xlsx`
- 從 Excel `EN` 工作表擷取 3DLA Overview。
- 只擷取有文字或數值的範圍，避免把下方空白一起貼進 Word。
- 將 Overview 轉成圖片並貼到：
  `5. Attachments - A. 3DLA Overview`
- 自動裁掉圖片周圍多餘空白，讓它看起來貼齊頁寬、比較好讀。
- 保留原本 Word 的版面、表格和其他附件內容。
- 預設不覆蓋既有檔案，避免不小心蓋掉同事已修改的版本。

## 如果當天檔案已經存在

如果已經有同一天的 MoM Word，程式會停止並提醒你，不會直接覆蓋。

如果你確定要重新產生，可以用 PowerShell 執行：

```powershell
powershell -Sta -NoProfile -ExecutionPolicy Bypass -File "OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\MoM\Generate Tomorrow 3DLA MoM - Code.ps1" -TargetDate "2026-07-04" -Overwrite -Open
```

請把日期改成你要重新產生的日期。

## 常見狀況

| 狀況 | 建議處理 |
| --- | --- |
| 程式說 Word 還開著 | 關閉所有 Word 視窗後再跑一次 |
| 找不到 Overview Excel | 先確認 `..\Overview` 裡是否已有目標日期 Excel |
| Attachment A 圖片看起來不對 | 先確認 Overview Excel 的內容和列高是否正常，再重新產生 |
| 已經產生過同一天 MoM | 若要重做，請用 `-Overwrite` |
| Word 開啟後內容還要調整 | 可以正常手動修改，程式只是幫你先做好底稿 |

## 小提醒

- 這份自動化主要幫忙做「產生底稿」和「貼 Overview」，最後內容仍需要人工檢查。
- 如果 Overview Excel 當天工項很多，圖片會自動依頁面空間縮放，但仍建議打開 Word 看一次。
- 每天多省一點重複操作時間，大家就能多留一點精神給 ESR / SIMOPS / interface 的確認。

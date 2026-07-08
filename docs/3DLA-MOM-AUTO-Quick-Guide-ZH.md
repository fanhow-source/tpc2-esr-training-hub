# 3DLA MoM 自動化 - 快速指南

大家好，這份 quick guide 是給每天要產生 ESR 3DLA MoM 的同事使用。

這個自動化工具會幫忙產生隔天的 MoM Word，並把對應日期的 3DLA Overview Excel 內容貼到 Attachment A。它主要是幫大家省掉重複操作，讓我們把時間留給真正重要的內容檢查、ESR 狀態、SIMOPS 和 interface 確認。

## 請先確認你使用哪一個資料夾

請使用已同步到電腦的 OAIC Ltd project folders。

| 資料夾 | 路徑 |
| --- | --- |
| MoM | `OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\MoM` |
| Overview | `OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\Overview` |

小提醒：請在 MoM 資料夾裡執行 `.cmd`。程式會優先使用旁邊的 `..\Overview`。

## 使用前請先確認

- 目標日期的 `3DLA Overview` Excel 已經完成並儲存。
- Overview Excel 檔名格式應類似：
  `OWP2-ESR-3DLA-Overview-20260706.xlsx`
- Word 請先關閉，避免檔案被鎖住。
- 如果 Excel 正在編輯 Overview，請先儲存再執行。

## 日常使用方式

1. 先完成並儲存隔天的 Overview Excel。
2. 關閉所有 Word 視窗。
3. 到你正在使用的 MoM 資料夾。
4. 雙擊：
   `Close Word First - Generate Tomorrow 3DLA MoM.cmd`
5. 程式會自動產生隔天的 MoM Word。
6. 開啟新 Word 後，請快速檢查：
   - Date
   - Meeting no.
   - `5. Attachments - A. 3DLA Overview`
   - `B. HV System Overview`
7. 確認內容後，再手動補充會議紀錄或輸出 PDF。

## 這個程式會自動做什麼

- 找到合適的前一份 MoM Word 作為模板。
- 依日期產生新的 Word 檔名，例如：
  `OWP2-ESR-3DLA-MOM-260706-01.docx`
- 自動更新 Word 裡的：
  - Date
  - Meeting no.
- 找到對應日期的 Overview Excel。
- 從 Excel `EN` 工作表擷取 3DLA Overview。
- 只擷取有文字或數值的範圍，避免把下方空白一起貼進 Word。
- 將 Overview 轉成圖片並貼到：
  `5. Attachments - A. 3DLA Overview`
- 自動裁掉圖片周圍多餘空白，讓圖片比較貼齊頁寬、比較好閱讀。
- 保留原本 Word 的版面、表格和其他附件內容。
- 預設不覆蓋既有檔案，避免蓋掉同事已修改的版本。

## 如果同一天的 MoM 已經存在

程式預設會停止，不會自動覆蓋。

如果你確定要重新產生，可以用 PowerShell 執行：

```powershell
powershell -Sta -NoProfile -ExecutionPolicy Bypass -File "Generate Tomorrow 3DLA MoM - Code.ps1" -TargetDate "2026-07-06" -Overwrite -Open
```

請把日期改成你要重新產生的日期。

## 常見狀況

| 狀況 | 建議處理 |
| --- | --- |
| 程式說 Word 還開著 | 關閉所有 Word 視窗後再跑一次 |
| 找不到 Overview Excel | 確認你使用的 MoM 路徑旁邊是否有正確的 `..\Overview` |
| 貼上的 Overview 圖片看起來不對 | 先確認 Overview Excel 內容、列高和頁面範圍，再重新產生 |
| 同一天 MoM 已經存在 | 確定要重做才使用 `-Overwrite` |
| Word 還需要手動調整 | 這是正常的，程式只是先幫你做好底稿 |

## 小提醒

- 這份工具是幫忙產生底稿，不是取代最後檢查。
- 如果 Overview 當天工項很多，請一定打開 Word 看一次圖片是否清楚。
- 每天少一點重複操作，就多一點時間留給 ESR / SIMOPS / interface 的確認。

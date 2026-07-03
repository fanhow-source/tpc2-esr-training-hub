# DPR 自動化 - 快速指南

大家好，為了讓每天做 DPR 稍微輕鬆一點，現在 DPR 已經加了一些自動化功能。

希望可以少一點重複手動調整，多一點時間專心檢查內容。

## 如何使用

1. 請先關閉所有 Word 視窗。
2. 在 DPR 資料夾執行 `Close Word First - Generate Tomorrow DPR.cmd`。
3. 程式會自動產生隔天的 DPR。
4. 開啟新 DPR 時，請記得按 `Enable Content`。
5. 接著就可以填寫內容、貼照片、檢查報告。
6. 關閉前請記得按 `Ctrl + S` 手動存檔。

## 自動化會幫你做什麼

- 自動複製最新 DPR，產生隔天的報告。
- 自動更新檔名、Doc No.、Report Date 和頁尾日期。
- 從 3DLA Overview 帶入 Activities：
  - 當天內容會放到 `A. High Level Activities (past 24hrs)`。
  - 隔天內容會放到 `A. Next 24 Hours`。
- 會把 Equipment 加到 Activity 前面，讓描述更清楚。
- 如果 Equipment 是空白、`TBC` 或 `TBD`，程式會自動略過。
- 如果 Equipment 和 Activity 開頭很像，例如 `IACs` + `IAC pull-in`，程式也會避免重複。
- 自動清除舊照片和照片描述，並重設 `#1` 到 `#8`。
- Pictures 會維持 8 格，分成 `OSS Pictures` 和 `TJB Pictures`。
- 貼上照片後，按 `Fit Pictures`，照片會自動適應格子大小。
- `Toolbox Meeting - Today` 預設為 `0`，輸入數字後：
  - `Permit to Work - Today` 會同步。
  - 兩個 Total 會自動累加。
- `B. Remarks` 只會清除 Description，保留 `001`。
- `Teams offshore` 的時間欄位會協助對齊：
  - 中間列主要填 `Time To`。
  - 下一列 `Time From` 會跟著同步。
  - 第一列和最後一列的左右時間都可以手動填。

## 小提醒

- 如果有新增或刪除 `Teams offshore` 的列，請順手檢查前後時間是否連續。
- 因為這份 DPR 是 `.docm`，需要 macro 才能執行自動功能，所以 Word 不支援 AutoSave。
- 關閉前按一下 `Ctrl + S` 就很安心。
- 如果產生 DPR 時出現錯誤，通常先把 Word 完全關閉，再重新執行一次就可以。


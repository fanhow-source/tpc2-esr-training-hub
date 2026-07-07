# ESR P/CP Training 自動化流程 - 快速使用說明

目前 ESR P/CP Training 流程已完成約 **95% 自動化**，日常作業已可使用。後續如果發現少量 bug，會再逐步修正。

相關 email 範本放在：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\Training Templates
```

使用前請先編輯範本最下方的簽名檔，改成你自己的名字。

## 使用前準備

1. 當需要請廠商提供 Person / Competent Person 訓練名單時，使用 `Person _ CP Candidate Request.oft` 範本寄信。
2. 廠商回填後，請把檔案放到：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\01_P_CP Candidate Lists
```

3. 到以下資料夾啟動工具：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Safety Document - SFD Register
```

4. 雙擊其中一個工具：

```text
Run ESR Training Automation (English).cmd
Run ESR Training Automation (中文).cmd
```

## 建議操作順序

1. `匯入廠商 P/CP 候選名單`
   - 將廠商回填的候選名單匯入 `TWSHXHV_ESR_OverallRegister`。
   - 匯入後，候選名單會移到 `Archive`。

2. `將白底待處理人員加入 SharePoint Site access`
   - 工具會自動開啟 Training Hub，將白底待處理人員加入 Site access。
   - 執行期間請暫時不要操作滑鼠或鍵盤，避免中斷自動化。

3. `自動寄送 Training invitation email`
   - 工具會依 Person / CP 分別開啟對應 email 範本。
   - Person 名單會放入 BCC 後直接寄出。
   - CP 名單會放入 BCC 後直接寄出。
   - 執行前請先確認白底名單正確，因為此步驟會真的寄出 email。

4. `掃描白底待處理人員`
   - 顯示目前仍待處理的白底人員。

5. `查 Training Hub 成績狀態`
   - 自動搜尋 Training Hub 成績檔。
   - Person 通過標準：`>= 36` 分。
   - CP 通過標準：Module 1 與 Module 2 都需 `>= 20` 分。
   - 只會採用最近約 6 個月內的 `Completion time` 作為有效成績。
   - 如果系統只找到半年前以前的同名紀錄，會顯示為舊紀錄參考，不會判定為 `PASSED`。
   - 若半年內已通過，畫面會顯示已於哪一天 `PASSED`。

6. `自動產生 PASSED 人員 PDF 證書`
   - 只會對半年內有效 `PASSED` 的人員，自動產生不可編輯的 PDF 證書。
   - 證書會存放在：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Certificates - CRT\2. Ready to be uploaded
```

7. `準備 Outlook certificate email 附件`
   - 使用 `Person Training - Certificate` 或 `CP Training - Certificate` 範本。
   - 將產生好的 PDF 證書寄給已通過測驗的人員。

## 已自動化的部分

- 不需要手動 key-in 人員資料。
- 不需要手動加入 SharePoint Site access。
- 不需要手動寄 Training invitation email。
- 不需要手動檢查是否通過，結果與通過日期會顯示在畫面上。
- 不需要手動製作 ESR 證書。

## 小提醒

- 執行前請先關閉相關 Excel / Outlook 草稿視窗。
- 自動操作 SharePoint 或 Outlook 時，請暫時不要使用滑鼠與鍵盤。
- 如果人員以前曾經通過，但超過 6 個月，系統不會把舊成績當作這次通過。
- 如果 Outlook 或 SharePoint 畫面卡住，先關閉相關視窗，再重新執行該步驟。
- 此工具已接近完整自動化，但仍可能因 Outlook / SharePoint 介面更新而出現小 bug，發現後再修。

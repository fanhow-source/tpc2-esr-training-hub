# ESR P/CP Training 自動化流程 - 快速使用說明

目前 ESR P/CP Training 流程已完成約 80% 自動化，日常作業已可使用。

相關 email 範本放在：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\Training Templates
```

使用前請記得先編輯範本最下方的簽名檔，改成你自己的名字。

## 操作流程

1. 當需要請廠商提供 Person / Competent Person 訓練名單時，使用 `Person _ CP Candidate Request.oft` 範本寄信。
2. 廠商回填後，請把檔案放到：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\01_P_CP Candidate Lists
```

3. 到以下資料夾：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Safety Document - SFD Register
```

4. 雙擊其中一個工具：

```text
Run ESR Training Automation (English).cmd
Run ESR Training Automation (中文).cmd
```

5. 依照工具畫面中的步驟 `1` 到 `4` 執行。第 `5` 步目前仍在測試中。
6. ESR 證書會自動產生並存放在：

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Certificates - CRT\2. Ready to be uploaded
```

7. 使用 `Person Training - Certificate` 或 `CP Training - Certificate` email 範本，把產生好的證書加入附件後，寄給已通過測驗的人員。

## 已自動化的部分

- 不需要手動 key-in 人員資料。
- 不需要手動檢查是否通過，結果會直接顯示在畫面上。
- 不需要手動製作 ESR 證書。

最後一步「自動產生 email，等待你確認後寄出」的功能，後續會再更新。

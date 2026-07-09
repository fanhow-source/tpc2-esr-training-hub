# ESR P/CP Training 自動化流程 - 快速使用說明

目前 ESR P/CP Training 流程已完成約 **95% 自動化**，日常作業已可使用。後續如果發現少量 bug，會再逐步修正。

主入口資料夾：

```text
OAIC Ltd\PROJECT_TWSHXESR - Documents\General\ESR AutoDoc Hub\04_ESR Training
```

請雙擊：

```text
Run ESR Training Automation (中文).cmd
```

或使用英文版：

```text
Run ESR Training Automation (English).cmd
```

## 首次使用：安裝 Python

如果自動化程式顯示找不到 Python，只需依照以下步驟安裝一次：

**1.** 開啟 Python 官方的 [Windows 下載頁面](https://www.python.org/downloads/windows/)。在 **Stable Release** 下方下載 **Windows installer (64-bit)**。請勿選擇 Pre-release、32-bit、ARM64 或 embeddable package。

![下載 Windows 64-bit Python 安裝程式](assets/esr-python-setup-01-download-64bit.png)

**2.** 如果 HP Sure Click 顯示防護訊息，先確認檔案是從 `python.org` 下載，再點選 **Remove protection and open**。

![允許 HP Sure Click 開啟官方 Python 安裝程式](assets/esr-python-setup-02-hp-sure-click.png)

**3.** 在 Python 安裝畫面：
   - 務必勾選 **Add python.exe to PATH**。
   - **Use admin privileges when installing py.exe** 對目前 Windows 使用者安裝通常不是必要項目。除非 Windows 或 IT 要求系統管理員授權，否則可不勾選。

![勾選 Add python.exe to PATH 並安裝 Python](assets/esr-python-setup-03-installer-options.png)

**4.** 點選 **Install Now**，等待 Python 安裝完成。

**5.** 開啟 Windows 搜尋並輸入 `cmd`。

**6.** 在 **Command Prompt** 下方點選 **Open**，不需要使用系統管理員模式。

![搜尋並開啟 Command Prompt](assets/esr-python-setup-04-open-command-prompt.png)

**7.** 複製以下完整指令，貼到 Command Prompt，按下 **Enter**，並等待套件安裝完成：

```cmd
python -m pip install --user openpyxl pypdf reportlab pillow playwright
```

![用一行指令安裝全部 Python 套件](assets/esr-python-setup-05-install-packages.png)

這一行指令會一次安裝目前 AutoDoc 工具需要的所有 Python 套件。其他現有自動化不需要額外的 Python 套件：

| 自動化工具 | 需要的軟體 |
|---|---|
| ESR Training | Python 3 與上述套件 |
| 3DLA MoM | Windows PowerShell、Microsoft Word 與 Excel |
| 3DLA Overview | Windows PowerShell 與 Microsoft Excel |
| DPR | Windows PowerShell、Microsoft Word 與 Excel |

**8.** 關閉 Command Prompt，再次執行 `Run ESR Training Automation (中文).cmd`。

## 使用前準備

1. 如需請廠商提供 Person / Competent Person 名單，使用 `Person _ CP Candidate Request.oft` 範本寄信。
2. 廠商回填後，把檔案放到：

```text
04_ESR Training\01_Inbox\P_CP Candidate Lists
```

檔名建議保持：

```text
TPC2_ESR_P_CP_Training_Register_[Company Name].xlsx
```

3. 執行前請關閉相關 Excel / Outlook 視窗，避免檔案被鎖住。

## 重要資料位置

Email templates：

```text
04_ESR Training\00_Template\Training email Templates
```

Training result Excel：

```text
04_ESR Training\02_Processing
```

自動化產生的證書：

```text
04_ESR Training\04_Certificates
```

正式 Register 不搬到 AutoDoc Hub，仍保留在：

```text
OAIC Ltd\PROJECT_TWSHXESR - Documents\General\Safety Document - SFD Register\TWSHXHV_ESR_OverallRegister.xlsm
```

腳本會自動把候選人資料寫入這份 workbook 的 `Old Training Register` 工作頁。

## 建議操作順序

1. `匯入廠商 P/CP 候選名單`
   - 讀取 `01_Inbox\P_CP Candidate Lists` 內的廠商回填檔。
   - 將資料寫入正式 `TWSHXHV_ESR_OverallRegister.xlsm` 的 `Old Training Register` 工作頁。
   - 不添加底色，讓後續步驟可辨識為白底待處理人員。
   - 自動排除表格下方 example rows。
   - 匯入後，原始廠商檔會移到 `99_Archive\P_CP Candidate Lists`。

2. `將白底待處理人員加入 SharePoint Site access`
   - 工具會開啟 Training Hub 網頁，將白底待處理人員加入 Site access。
   - 執行期間請暫時不要操作滑鼠或鍵盤，去喝杯茶或上個廁所，讓它安靜跑完。

3. `自動寄送 Training invitation email`
   - 工具會依 Person / CP 開啟對應 Outlook template。
   - Person 名單會放入 BCC 後直接寄出。
   - CP 名單會放入 BCC 後直接寄出。
   - 執行前請先確認白底名單正確，因為此步驟會真的寄出 email。

4. `掃描白底待處理人員`
   - 顯示目前仍待處理的白底人員。

5. `查 Training Hub 成績狀態`
   - 自動搜尋 `02_Processing` 內的 Training Hub 成績檔。
   - Person 通過標準：`>= 36` 分。
   - CP 通過標準：Module 1 與 Module 2 都需 `>= 20` 分。
   - 只會採用最近約 6 個月內的 `Completion time` 作為有效成績。
   - 如果系統只找到半年前以前的同名紀錄，會顯示為舊紀錄參考，不會判定為 `PASSED`。
   - 若半年內已通過，畫面會顯示已於哪一天 `PASSED`。

6. `自動產生 PASSED 人員 PDF 證書`
   - 只會對半年內有效 `PASSED` 的人員，自動產生不可編輯的圖片式 PDF 證書。
   - Person 證書會放在 `04_Certificates\Person`。
   - CP 證書會放在 `04_Certificates\Competent Person`。

7. `自動寄送 certificate email`
   - 使用 `Person Training - Certificate` 或 `CP Training - Certificate` 範本。
   - 自動填入收件人 email。
   - 自動附上剛產生的 PDF 證書。
   - 直接寄出給已通過測驗的人員。

## 已自動化的部分

- 不需要手動 key-in 人員資料。
- 不需要手動加入 SharePoint Site access。
- 不需要手動寄 Training invitation email。
- 不需要手動檢查是否通過，結果與通過日期會顯示在畫面上。
- 不需要手動製作 ESR 證書。
- 不需要手動附上證書寄出 certificate email。

## 小提醒

- 執行前請先關閉相關 Excel / Outlook 草稿視窗。
- 自動操作 SharePoint 或 Outlook 時，請暫時不要使用滑鼠與鍵盤。
- 如果人員以前曾經通過，但超過 6 個月，系統不會把舊成績當作這次通過。
- 如果 Outlook 或 SharePoint 畫面卡住，先關閉相關視窗，再重新執行該步驟。
- 此工具已接近完整自動化，但仍可能因 Outlook / SharePoint 介面更新而出現小 bug，發現後再修。

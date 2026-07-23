# ESR P/CP Training｜照順序操作

<div class="oaic-status-pill">約 95% 自動化 · 發現小 bug 會持續修正</div>

<div class="oaic-launch-card">
  <span aria-hidden="true">▶️</span>
  <div>
    <strong>每次都從這裡開始</strong>
    <code>Run ESR Training Automation (中文).cmd</code>
  </div>
</div>

![ESR Training Automation 中文 CLI 選單](assets/esr-training-cli-menu-zh.png){ .oaic-step-shot }

!!! danger "會真的寄出 Email"
    Command `3` 與 `7` 會直接寄信。執行前先確認人員與 Email。

![ESR Training template 與 CLI command 流程圖](assets/esr-training-template-command-flow.png){ .oaic-step-shot }

## 日常流程

<div class="oaic-visual-steps" markdown>

<section class="oaic-visual-step oaic-visual-step--with-shot">
  <div class="oaic-visual-step__number">1</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📨</div>
  <div>
    <h2>取得候選名單</h2>
    <p>寄出 <code>1. Person _ CP Candidate Request.oft</code></p>
    <p>收到 Excel → 放入 <code>01_Inbox\P_CP Candidate Lists</code></p>
  </div>
</section>

![有編號的 Training email templates](assets/esr-training-email-templates-numbered.png){ .oaic-step-shot }

<section class="oaic-visual-step oaic-visual-step--with-shot">
  <div class="oaic-visual-step__number">2</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📥</div>
  <div>
    <h2>CLI → Command 1</h2>
    <p><strong>匯入廠商 P/CP 候選名單</strong></p>
    <p>若看到 <code>COPY TO TEMPLATE 2</code>：複製名單 → 貼入 Template 2 → 寄給廠商。</p>
  </div>
</section>

![從黑色指令視窗複製有效名單](assets/esr-training-step1-copy-template2-lines.png){ .oaic-step-shot }

![把有效名單貼到第 2 個 email template](assets/esr-training-template2-validity-confirmation.png){ .oaic-step-shot }

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">3</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🌐</div>
  <div>
    <h2>CLI → Command 2</h2>
    <p><strong>加入 SharePoint Site access</strong></p>
    <p>執行時不要使用滑鼠或鍵盤。</p>
  </div>
</section>

<section class="oaic-visual-step oaic-visual-step--danger">
  <div class="oaic-visual-step__number">4</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">✉️</div>
  <div>
    <h2>CLI → Command 3</h2>
    <p><strong>寄送 Training invitation</strong></p>
    <p>檢查白底人員 → 執行 → Email 直接寄出。</p>
  </div>
</section>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">5</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🔎</div>
  <div>
    <h2>CLI → Command 4，再 Command 5</h2>
    <p><strong>掃描待處理人員 → 查 Training Hub 成績</strong></p>
    <p>Person ≥ 36；CP Module 1、2 各 ≥ 20。</p>
  </div>
</section>

![Run Command 5 and check the P/CP training results](assets/esr-training/command5-results.png){ .oaic-step-shot .oaic-step-shot--tall loading=lazy }

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">6</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📜</div>
  <div>
    <h2>CLI → Command 6</h2>
    <p><strong>產生 PASSED 人員 PDF 證書</strong></p>
    <p>檢查 <code>04_Certificates</code></p>
  </div>
</section>

![Find the generated Person and Competent Person certificates](assets/esr-training/certificate-output.png){ .oaic-step-shot .oaic-step-shot--tall loading=lazy }

<section class="oaic-visual-step oaic-visual-step--danger">
  <div class="oaic-visual-step__number">7</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📤</div>
  <div>
    <h2>CLI → Command 7</h2>
    <p><strong>寄送 Certificate email</strong></p>
    <p>檢查 Email 與 PDF → 執行 → Email 直接寄出。</p>
  </div>
</section>

</div>

<details class="oaic-compact-details" markdown>
<summary>第一次使用：Python + Outlook Bcc</summary>

1. 雙擊 `Install ESR Automation Prerequisites.cmd`
2. 等待顯示 `Python packages OK`
3. Outlook：**File → Settings**

![開啟 Outlook Settings](assets/esr-training/outlook-settings-open.png){ .oaic-step-shot }

4. **Mail → Compose → Always show Bcc**

![啟用 Always show Bcc](assets/esr-training/outlook-always-show-bcc.png){ .oaic-step-shot }

</details>

<details class="oaic-compact-details" markdown>
<summary>重要規則與資料位置</summary>

- 正式 Register：`Safety Document - SFD Register\TWSHXHV_ESR_OverallRegister.xlsm`
- 寫入工作頁：`Old Training Register`
- 已有訓練紀錄有效期：730 天；少於 30 天會顯示 `EXPIRING SOON`
- 本次 Training Hub 成績：只採用最近約 6 個月的結果
- Email templates：`00_Template\Training email Templates`
- Training results：`02_Processing`
- Certificates：`04_Certificates`
- 需要重訓時：使用 `4. Person _ CP Re-training Required.oft`

</details>

!!! tip "卡住？"
    關閉相關 Excel / Outlook 視窗，再執行同一個 command。

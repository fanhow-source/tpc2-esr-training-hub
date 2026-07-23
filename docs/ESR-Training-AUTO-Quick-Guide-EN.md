# ESR P/CP Training｜Follow in order

<div class="oaic-status-pill">About 95% automated · Small bugs are fixed as found</div>

<div class="oaic-launch-card">
  <span aria-hidden="true">▶️</span>
  <div>
    <strong>Always start here</strong>
    <code>Run ESR Training Automation (English).cmd</code>
  </div>
</div>

![ESR Training Automation English CLI menu](assets/esr-training-cli-menu-en-current.png){ .oaic-step-shot }

!!! danger "These commands send real emails"
    Commands `3` and `7` send immediately. Check people and email addresses first.

![ESR Training template and CLI command flow](assets/esr-training-template-command-flow.png){ .oaic-step-shot }

## Daily workflow

<div class="oaic-visual-steps" markdown>

<section class="oaic-visual-step oaic-visual-step--with-shot">
  <div class="oaic-visual-step__number">1</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📨</div>
  <div>
    <h2>Get the candidate list</h2>
    <p>Send <code>1. Person _ CP Candidate Request.oft</code></p>
    <p>Received Excel → place in <code>01_Inbox\P_CP Candidate Lists</code></p>
  </div>
</section>

![Numbered Training email templates](assets/esr-training-email-templates-numbered.png){ .oaic-step-shot }

<section class="oaic-visual-step oaic-visual-step--with-shot">
  <div class="oaic-visual-step__number">2</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📥</div>
  <div>
    <h2>CLI → Command 1</h2>
    <p><strong>Import contractor P/CP candidate list</strong></p>
    <p>If <code>COPY TO TEMPLATE 2</code> appears: copy names → paste into Template 2 → send to contractor.</p>
  </div>
</section>

![Copy valid candidates from the CLI](assets/esr-training-step1-copy-template2-lines.png){ .oaic-step-shot }

![Paste valid candidates into email Template 2](assets/esr-training-template2-validity-confirmation.png){ .oaic-step-shot }

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">3</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🌐</div>
  <div>
    <h2>CLI → Command 2</h2>
    <p><strong>Add SharePoint Site access</strong></p>
    <p>Do not use the mouse or keyboard while it runs.</p>
  </div>
</section>

<section class="oaic-visual-step oaic-visual-step--danger">
  <div class="oaic-visual-step__number">4</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">✉️</div>
  <div>
    <h2>CLI → Command 3</h2>
    <p><strong>Send Training invitations</strong></p>
    <p>Check white rows → run → emails send immediately.</p>
  </div>
</section>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">5</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🔎</div>
  <div>
    <h2>CLI → Command 4, then Command 5</h2>
    <p><strong>Scan pending people → check Training Hub results</strong></p>
    <p>Person ≥ 36; CP Module 1 and 2 each ≥ 20.</p>
  </div>
</section>

![Run Command 5 and check the P/CP training results](assets/esr-training/command5-results.png){ .oaic-step-shot .oaic-step-shot--tall loading=lazy }

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">6</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📜</div>
  <div>
    <h2>CLI → Command 6</h2>
    <p><strong>Create PDF certificates for PASSED people</strong></p>
    <p>Check <code>04_Certificates</code></p>
  </div>
</section>

![Find the generated Person and Competent Person certificates](assets/esr-training/certificate-output.png){ .oaic-step-shot .oaic-step-shot--tall loading=lazy }

<section class="oaic-visual-step oaic-visual-step--danger">
  <div class="oaic-visual-step__number">7</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📤</div>
  <div>
    <h2>CLI → Command 7</h2>
    <p><strong>Send Certificate emails</strong></p>
    <p>Check email and PDF → run → emails send immediately.</p>
  </div>
</section>

</div>

<details class="oaic-compact-details" markdown>
<summary>First use: Python + Outlook Bcc</summary>

1. Double-click `Install ESR Automation Prerequisites.cmd`
2. Wait for `Python packages OK`
3. Outlook: **File → Settings**

![Open Outlook Settings](assets/esr-training/outlook-settings-open.png){ .oaic-step-shot }

4. **Mail → Compose → Always show Bcc**

![Enable Always show Bcc](assets/esr-training/outlook-always-show-bcc.png){ .oaic-step-shot }

</details>

<details class="oaic-compact-details" markdown>
<summary>Important rules and folders</summary>

- Formal Register: `Safety Document - SFD Register\TWSHXHV_ESR_OverallRegister.xlsm`
- Worksheet written by the tool: `Old Training Register`
- Existing training validity: 730 days; less than 30 days shows `EXPIRING SOON`
- Current Training Hub attempt: results from only the latest about 6 months
- Email templates: `00_Template\Training email Templates`
- Training results: `02_Processing`
- Certificates: `04_Certificates`
- Retraining email: `4. Person _ CP Re-training Required.oft`

</details>

!!! tip "Stuck?"
    Close related Excel / Outlook windows, then run the same command again.

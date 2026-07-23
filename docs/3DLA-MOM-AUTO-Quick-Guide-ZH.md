# 3DLA MoM｜5 步完成

<div class="oaic-path-chip">📊 Overview 完成後 → 📝 產生 MoM</div>

<div class="oaic-visual-steps" markdown>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">1</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">💾</div>
  <div>
    <h2>完成並儲存明日 Overview</h2>
  </div>
</section>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">2</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">❌</div>
  <div>
    <h2>關閉所有 Word 視窗</h2>
  </div>
</section>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">3</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🖱️</div>
  <div>
    <h2>在 MoM 資料夾雙擊 .cmd</h2>
    <code>Close Word First - Generate Tomorrow 3DLA MoM.cmd</code>
  </div>
</section>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">4</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">📄</div>
  <div>
    <h2>開啟新產生的 Word</h2>
  </div>
</section>

<section class="oaic-visual-step oaic-visual-step--check">
  <div class="oaic-visual-step__number">5</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🔎</div>
  <div>
    <h2>檢查 4 個位置</h2>
    <p><strong>Date · Meeting no. · Attachment A · Attachment B</strong></p>
  </div>
</section>

</div>

![Complete 3DLA MoM workflow](assets/3dla-mom/full-workflow.png){ .oaic-step-shot .oaic-step-shot--tall loading=lazy }

!!! warning "同一天的 MoM 已存在"
    程式會停止，不會覆蓋。確定要重做時，才使用 `-Overwrite`。

<details class="oaic-compact-details" markdown>
<summary>資料夾位置</summary>

- MoM：`OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\MoM`
- Overview：`OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\Overview`

</details>

<details class="oaic-compact-details" markdown>
<summary>重新產生同一天的 MoM</summary>

```powershell
powershell -Sta -NoProfile -ExecutionPolicy Bypass -File "Generate Tomorrow 3DLA MoM - Code.ps1" -TargetDate "2026-07-06" -Overwrite -Open
```

</details>

# Step 0｜第一次設定

只需設定一次。OneDrive 重裝或路徑改變時，再做一次。

<div class="oaic-visual-steps" markdown>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">1</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🌐</div>
  <div>
    <h2>開啟 OAIC SharePoint</h2>
    <a class="oaic-inline-button" href="https://oaicltd.sharepoint.com/_layouts/15/sharepoint.aspx">Open SharePoint</a>
  </div>
</section>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">2</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">☁️</div>
  <div>
    <h2>找到資料夾 → 按 Sync</h2>
    <p>選擇你要使用的 workflow。</p>
  </div>
</section>

![SharePoint folder sync steps](assets/setup/sharepoint-sync.png){ .oaic-step-shot .oaic-step-shot--tall loading=lazy }

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">3</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">✅</div>
  <div>
    <h2>等 OneDrive 完成同步</h2>
    <p>在 File Explorer 看到綠色勾勾後，開啟最新 automation file 一次。</p>
  </div>
</section>

![Check the OneDrive green sync tick](assets/setup/onedrive-green-tick.png){ .oaic-step-shot .oaic-step-shot--tall loading=lazy }

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">4</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">🐍</div>
  <div>
    <h2>ESR Training only</h2>
    <code>Install ESR Automation Prerequisites.cmd</code>
    <p>看到 <strong>Python packages OK</strong> 即完成。</p>
  </div>
</section>

<section class="oaic-visual-step">
  <div class="oaic-visual-step__number">5</div>
  <div class="oaic-visual-step__icon" aria-hidden="true">▶️</div>
  <div>
    <h2>關閉 Word / Excel → 開始</h2>
    <p>回到首頁，選擇要執行的 workflow。</p>
  </div>
</section>

</div>

<details class="oaic-compact-details" markdown>
<summary>需要同步哪些資料夾？</summary>

| Workflow | SharePoint 資料夾 |
|---|---|
| 3DLA MoM | `PROJECT TWSHXESR / Documents / General / 3-Day Look Ahead - 3DLA / MoM` |
| 3DLA Overview | `PROJECT TWSHXESR / Documents / General / 3-Day Look Ahead - 3DLA / Overview` |
| ESR Training | `PROJECT TWSHXESR / Documents / General / ESR AutoDoc Hub / 04_ESR Training` |
| ESR Register | `PROJECT TWSHXESR / Documents / General / Safety Document - SFD Register` |
| DPR | `PROJECT TWSHXHV / offshore daily report` |

</details>

!!! warning "找不到檔案？"
    確認綠色勾勾 → 關閉 Office → 再執行一次。

# Step 0 — SharePoint and OneDrive Setup

Complete this step before running any OAIC ESR automation tool

This setup is required when using the automation tools for the first time, after reinstalling OneDrive, or when the local OneDrive path has changed

## 1. Open OAIC SharePoint

Open the OAIC SharePoint start page

```text
https://oaicltd.sharepoint.com/_layouts/15/sharepoint.aspx
```

Find the required project folders and use **Sync** to add them to your computer through OneDrive

## 2. Sync the required folders

| Workflow | Required SharePoint folder |
|---|---|
| 3DLA MoM | PROJECT TWSHXESR / Documents / General / 3-Day Look Ahead - 3DLA / MoM |
| 3DLA Overview | PROJECT TWSHXESR / Documents / General / 3-Day Look Ahead - 3DLA / Overview |
| ESR Training automation | PROJECT TWSHXESR / Documents / General / ESR AutoDoc Hub / 04_ESR Training |
| ESR Register | PROJECT TWSHXESR / Documents / General / Safety Document - SFD Register |
| DPR | PROJECT TWSHXHV / Documents / General / 08. Communication / 01. Report / offshore daily report |

Use the folder that is actively synced on your computer

The exact local path may be different for each user depending on OneDrive setup status

## 3. Confirm the local OneDrive path

After syncing, confirm that the folders appear in File Explorer under your local OneDrive path

Typical examples may look like this

```text
OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\MoM
```

```text
OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\Overview
```

```text
OAIC Ltd\PROJECT_TWSHXESR - Documents\General\ESR AutoDoc Hub\04_ESR Training
```

```text
OAIC Ltd\PROJECT_TWSHXESR - Documents\General\Safety Document - SFD Register
```

```text
OAIC Ltd\PROJECT_TWSHXHV - Documents\General\08. Communication\01. Report\offshore daily report
```

If two similar paths exist, use the one with the current OneDrive sync status on your computer

## 4. Download the latest automation files locally

After syncing the folder, click or open the latest automation file once so OneDrive downloads it to the local computer before running the tool

Check the latest files for the relevant workflow

- Latest 3DLA MoM automation file
- Latest 3DLA Overview automation file
- Latest DPR automation file
- Latest ESR Training automation file
- Current template version where applicable, for example the 04/07 template version

Do not run the automation while the required file is still cloud-only

## 5. Install Python for ESR Training

Python is currently required by the ESR Training automation. It only needs to be installed once.

**1.** Open the official [Python Releases for Windows](https://www.python.org/downloads/windows/) page. Under a **Stable Release**, download **Windows installer (64-bit)**.

![Download the Windows 64-bit Python installer](assets/esr-python-setup-01-download-64bit.png)

**2.** If HP Sure Click displays a warning, confirm that the file came from `python.org`, then select **Remove protection and open**.

![Allow the official Python installer through HP Sure Click](assets/esr-python-setup-02-hp-sure-click.png)

**3.** Select **Add python.exe to PATH**. Leave **Use admin privileges when installing py.exe** unticked unless administrator approval is requested.

![Select Add python.exe to PATH and install Python](assets/esr-python-setup-03-installer-options.png)

**4.** Select **Install Now** and wait for Python installation to finish.

**5.** Open Windows Search and type `cmd`.

**6.** Select **Open** under **Command Prompt**. Administrator mode is not required.

![Search for and open Command Prompt](assets/esr-python-setup-04-open-command-prompt.png)

**7.** Copy and paste the following complete command into Command Prompt, press **Enter**, and wait until installation finishes:

```cmd
python -m pip install --user openpyxl pypdf reportlab pillow playwright
```

![Install all required Python packages in one command](assets/esr-python-setup-05-install-packages.png)

This single command installs all Python packages currently required by the AutoDoc tools.

MoM, Overview and DPR currently use Windows PowerShell and Microsoft Office, so they do not require additional Python packages.

**8.** Close Command Prompt and run the ESR Training launcher again.

## 6. Close related Office files

Before running automation, close the related Word or Excel files

This prevents Office from locking the file while the automation is trying to edit or generate records

## Quick check before running

| Check item | Expected result |
|---|---|
| SharePoint folder synced | Folder appears in local OneDrive |
| Latest automation file opened once | File is downloaded locally |
| Related Word or Excel files closed | No file lock issue |
| Correct workflow folder selected | MoM, Overview, DPR or ESR Training path matches the task |

## If the automation cannot find the file

Check the following items first

1. Confirm the folder has been synced from SharePoint
2. Confirm the file is not cloud-only
3. Confirm you are using the active OneDrive path
4. Close related Office files and try again
5. Escalate to SAP or the automation owner if the ESR / ENSR / WTSR boundary is unclear

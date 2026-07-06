# 3DLA MoM Automation - Quick Guide

Hi everyone, to make the daily ESR 3DLA MoM preparation a little easier, this folder now includes an automated Word report generator.

The aim is not to replace anyone's review. It simply takes care of the repetitive parts first, so we can spend more time checking the content, risks, and interfaces properly.

## Before You Start

- Please complete the target day's `3DLA Overview` Excel first.
- The Overview Excel should be saved in:
  `..\Overview`
- Please close Word before running the tool, so the Word file is not locked.
- If the Overview Excel is still open, please save it first.

## Daily Use

1. Complete and save tomorrow's Overview Excel.
2. Close all Word windows.
3. In the MoM folder, double-click:
   `Close Word First - Generate Tomorrow 3DLA MoM.cmd`
4. The tool will generate tomorrow's MoM Word file automatically.
5. After opening the new Word file, please quickly check:
   - Date
   - Meeting no.
   - `5. Attachments - A. 3DLA Overview`
   - `B. HV System Overview`
6. Once checked, continue with any meeting notes or PDF export as usual.

## What The Automation Does

- Finds the most suitable previous MoM Word file to use as the template.
- Creates the new Word file using the correct date-based name, for example:
  `OWP2-ESR-3DLA-MOM-260704-01.docx`
- Updates the Word header fields:
  - Date
  - Meeting no.
- Finds the matching Overview Excel for the target date, for example:
  `OWP2-ESR-3DLA-Overview-20260704.xlsx`
- Captures the 3DLA Overview from the Excel `EN` worksheet.
- Uses only the range that contains visible text or values, so empty rows below the table are not pasted into Word.
- Converts the Overview into an image and inserts it into:
  `5. Attachments - A. 3DLA Overview`
- Trims unnecessary white space around the image so it fits the page width and stays readable.
- Keeps the original Word layout, tables, and other attachment content.
- Does not overwrite an existing file by default, to avoid replacing a version already edited by someone.

## If The File Already Exists

If a MoM Word file already exists for the same date, the tool will stop and warn you. It will not overwrite it automatically.

If you are sure you want to regenerate it, run this in PowerShell:

```powershell
powershell -Sta -NoProfile -ExecutionPolicy Bypass -File "C:\Users\CharlieTseng\OAIC Ltd\PROJECT TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\MoM\Generate Tomorrow 3DLA MoM - Code.ps1" -TargetDate "2026-07-04" -Overwrite -Open
```

Please change the date to the report date you need.

## Common Situations

| Situation | What To Do |
| --- | --- |
| The tool says Word is still open | Close all Word windows and run it again |
| The Overview Excel cannot be found | Check that the target date Excel exists in `..\Overview` |
| Attachment A does not look right | Check the Overview Excel content and row heights, then regenerate the MoM |
| The same date MoM already exists | Use `-Overwrite` only if you are sure you want to rebuild it |
| The Word still needs edits | That is normal. The tool prepares the draft; final review is still manual |

## Gentle Reminders

- This automation prepares the report draft and inserts the Overview. The final content still needs a human check.
- If the Overview has many activities, the image will be scaled to fit the page, but it is still worth opening the Word file for a quick look.
- Saving a few minutes on repeated formatting gives us a little more space to focus on ESR, SIMOPS, and interface checks.


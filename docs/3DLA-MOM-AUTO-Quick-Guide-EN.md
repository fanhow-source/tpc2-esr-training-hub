# 3DLA MoM Automation - Quick Guide

Hi everyone, this quick guide is for colleagues who generate the daily ESR 3DLA MoM.

The automation creates the next day's MoM Word file and inserts the matching 3DLA Overview Excel into Attachment A. The goal is to reduce repeated formatting work, so we can spend more time checking the actual content, ESR status, SIMOPS, and interfaces.

## Please Check Which Folder You Are Using

There are currently two folder sets in use. Please use the one that matches your OneDrive setup.

| User / setup | MoM folder | Overview folder |
| --- | --- | --- |
| Charlie new OneDrive path | `C:\Users\CharlieTseng\OneDrive - OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\MoM` | `C:\Users\CharlieTseng\OneDrive - OAIC Ltd\PROJECT_TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\Overview` |
| Colleagues using the original path | `C:\Users\CharlieTseng\OAIC Ltd\PROJECT TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\MoM` | `C:\Users\CharlieTseng\OAIC Ltd\PROJECT TWSHXESR - Documents\General\3-Day Look Ahead - 3DLA\Overview` |

Small reminder: run the `.cmd` from the MoM folder you are actually using. The script will first look for `..\Overview` next to that MoM folder, so it does not accidentally use the Excel files from the other OneDrive path.

## Before You Start

- Complete and save the target day's `3DLA Overview` Excel.
- The Overview Excel file name should look like:
  `OWP2-ESR-3DLA-Overview-20260706.xlsx`
- Close Word first, so the Word file is not locked.
- If the Overview Excel is open, please save it before running the tool.

## Daily Use

1. Complete and save tomorrow's Overview Excel.
2. Close all Word windows.
3. Go to the MoM folder you are using.
4. Double-click:
   `Close Word First - Generate Tomorrow 3DLA MoM.cmd`
5. The tool will generate tomorrow's MoM Word file automatically.
6. After opening the new Word file, please quickly check:
   - Date
   - Meeting no.
   - `5. Attachments - A. 3DLA Overview`
   - `B. HV System Overview`
7. After checking, continue with meeting notes or PDF export as usual.

## What The Automation Does

- Finds a suitable previous MoM Word file to use as the template.
- Creates the new Word file using the correct date-based name, for example:
  `OWP2-ESR-3DLA-MOM-260706-01.docx`
- Updates the Word header fields:
  - Date
  - Meeting no.
- Finds the matching Overview Excel for the target date.
- Captures the 3DLA Overview from the Excel `EN` worksheet.
- Uses only the range that contains visible text or values, so empty rows below the table are not pasted into Word.
- Converts the Overview into an image and inserts it into:
  `5. Attachments - A. 3DLA Overview`
- Trims unnecessary white space around the image so it fits the page width and stays readable.
- Keeps the original Word layout, tables, and other attachment content.
- Does not overwrite an existing file by default, to avoid replacing a version already edited by someone.

## If The Same Date MoM Already Exists

The tool will stop by default. It will not overwrite the file automatically.

If you are sure you want to regenerate it, run this in PowerShell:

```powershell
powershell -Sta -NoProfile -ExecutionPolicy Bypass -File "Generate Tomorrow 3DLA MoM - Code.ps1" -TargetDate "2026-07-06" -Overwrite -Open
```

Please change the date to the report date you need.

## Common Situations

| Situation | What To Do |
| --- | --- |
| The tool says Word is still open | Close all Word windows and run it again |
| The Overview Excel cannot be found | Check that the correct `..\Overview` folder exists next to your MoM folder |
| Attachment A does not look right | Check the Overview Excel content, row heights, and print layout, then regenerate |
| The same date MoM already exists | Use `-Overwrite` only if you are sure you want to rebuild it |
| The Word still needs manual edits | That is normal. The tool prepares the draft; final review is still manual |

## Gentle Reminders

- This tool prepares the draft. It does not replace the final human check.
- If the Overview has many activities, please open the Word file and check that the image is still readable.
- Saving a few minutes on repeated formatting gives us a little more space to focus on ESR, SIMOPS, and interface checks.


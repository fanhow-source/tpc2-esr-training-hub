# DPR Automation - Quick Guide

Hi everyone, to make the daily DPR a little easier, we have added some automation to the new DPR format.

The idea is to reduce repeated manual work, so we can spend more time checking the actual content.

## How To Use

1. Please close all Word windows first.
2. In the DPR folder, run `Close Word First - Generate Tomorrow DPR.cmd`.
3. The programme will generate tomorrow's DPR automatically.
4. When opening the new DPR, please click `Enable Content`.
5. You can then fill in the report, paste photos, and review the content.
6. Before closing, please press `Ctrl + S` to save manually.

## What The Automation Does

- Copies the latest DPR and creates tomorrow's report.
- Updates the file name, Doc No., Report Date, and footer.
- Imports activities from the 3DLA Overview:
  - Today's activities go to `A. High Level Activities (past 24hrs)`.
  - Tomorrow's activities go to `A. Next 24 Hours`.
- Adds Equipment before the Activity where it helps make the description clearer.
- Skips Equipment if it is blank, `TBC`, or `TBD`.
- Avoids repeated wording, for example `IACs` + `IAC pull-in` becomes `IAC pull-in`.
- Clears old photos and photo descriptions, then resets `#1` to `#8`.
- Keeps 8 photo slots, arranged as `OSS Pictures` and `TJB Pictures`.
- After pasting photos, press `Fit Pictures` to resize them into the cells.
- Resets `Toolbox Meeting - Today` to `0`; once entered:
  - `Permit to Work - Today` follows the same value.
  - Both Totals are updated automatically.
- Clears only the Description in `B. Remarks`, while keeping `001`.
- Helps align the `Teams offshore` time entries:
  - For middle rows, mainly fill in `Time To`.
  - The next row's `Time From` will follow.
  - The first and last rows can both be edited manually.

## Small Reminders

- If rows are added or deleted in `Teams offshore`, please take a quick look at the nearby times.
- This is a `.docm` file because macros are needed for the automation. Word does not allow AutoSave for this file type.
- A quick `Ctrl + S` before closing would be perfect.
- If the DPR generation fails, please close Word completely and run it again.


# 3DLA Overview Automation - Quick Guide

Hi everyone, we have added a small helper for the 3DLA Overview report.

The aim is simple: less copying, fewer manual row adjustments, and a little more time to check the actual work content.

## How To Use

1. Please close the current 3DLA Excel file first.
2. In the 3DLA Overview folder, run `Close Excel First - Generate Tomorrow 3DLA.cmd`.
3. The programme will find the latest 3DLA Overview file in the same folder.
4. It will then generate the next day's report automatically.
5. Open the new file and review the contents before issuing it.

## What The Automation Does

- Finds the latest file named like `OWP2-ESR-3DLA-Overview-YYYYMMDD.xlsx`.
- Creates the next day's file with the correct date in the file name.
- Updates the yellow `DATE TODAY` cell.
- Moves the existing look-ahead activities forward by date.
- Keeps the date formulas working in the schedule area.
- Adds or removes rows when the number of activities changes.
- Keeps the alternating grey and white day sections.
- For the final look-ahead day, copies the latest available activity plan if the new day is still too far ahead to forecast.
- Keeps the `Simops` and `Remarks` sections below the schedule.

## Small Reminders

- Please close the latest 3DLA Excel file before running the `.cmd` file.
- Please run the `.cmd` file, not the `.ps1` file.
- The `.ps1` file is only the background code and needs to stay in the same folder.
- The tool works from the folder it is placed in, so it should work for different users without changing the Windows user name path.
- If an error appears, please close Excel completely and run the `.cmd` file again.

Thanks everyone. Hopefully this saves a few minutes each day and keeps the report preparation a bit calmer.

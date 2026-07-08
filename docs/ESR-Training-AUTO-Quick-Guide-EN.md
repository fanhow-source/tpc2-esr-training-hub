# ESR P/CP Training Automation - Quick Guide

The ESR P/CP Training workflow is now around **95% automated** and ready for day-to-day use. A few small bugs may still appear as Outlook or SharePoint changes; these will be fixed as they are found.

Main folder:

```text
C:\Users\<UserName>\OneDrive - OAIC Ltd\PROJECT_TWSHXESR - Documents\General\ESR AutoDoc Hub\04_ESR Training
```

Double-click:

```text
Run ESR Training Automation (English).cmd
```

or use the Chinese launcher:

```text
Run ESR Training Automation (中文).cmd
```

## Before You Start

1. Use `Person _ CP Candidate Request.oft` when asking a contractor to provide the list of people who need Person or Competent Person training.
2. When the contractor returns the completed register, save it here:

```text
04_ESR Training\01_Inbox\P_CP Candidate Lists
```

The file name should normally follow this pattern:

```text
TPC2_ESR_P_CP_Training_Register_[Company Name].xlsx
```

3. Close related Excel files and Outlook draft windows before running the tool.

## Key Locations

Email templates:

```text
04_ESR Training\00_Template\Training email Templates
```

Training result Excel files:

```text
04_ESR Training\02_Processing
```

Generated certificates:

```text
04_ESR Training\04_Certificates
```

The official register is not moved into the AutoDoc Hub. It stays here:

```text
C:\Users\<UserName>\OneDrive - OAIC Ltd\PROJECT_TWSHXESR - Documents\General\Safety Document - SFD Register\TWSHXHV_ESR_OverallRegister.xlsm
```

The script writes candidate data into the `Old Training Register` sheet in that workbook.

## Recommended Workflow

1. `Import contractor P/CP candidate lists`
   - Reads contractor returned files from `01_Inbox\P_CP Candidate Lists`.
   - Writes the data into the `Old Training Register` sheet in the official `TWSHXHV_ESR_OverallRegister.xlsm`.
   - Keeps the rows without fill colour so they remain identifiable as pending white-background entries.
   - Automatically excludes the example rows at the bottom of the contractor template.
   - Moves processed contractor files to `99_Archive\P_CP Candidate Lists`.

2. `Add pending trainees to SharePoint Site access`
   - Opens the Training Hub page and adds pending white-background trainees to Site access.
   - Please do not use the mouse or keyboard while this step is running. Grab a tea or take a quick break and let it finish.

3. `Send training invitation emails`
   - Opens the correct Outlook template for Person and CP.
   - Person recipients are added to BCC and sent automatically.
   - CP recipients are added to BCC and sent automatically.
   - Please check the pending white-background list before running this step, as it will send the emails.

4. `Scan pending white-background entries`
   - Shows the trainees still waiting to be processed.

5. `Check Training Hub result status`
   - Searches the Training Hub result workbooks in `02_Processing`.
   - Person passing score: `>= 36`.
   - CP passing score: both Module 1 and Module 2 must be `>= 20`.
   - Only results with a `Completion time` within roughly the last 6 months are treated as valid.
   - If the tool only finds an older matching name, it is shown as an old reference record and is not treated as `PASSED`.
   - If a valid recent result is passed, the screen shows the date when the person `PASSED`.

6. `Generate PDF certificates for PASSED trainees`
   - Automatically creates non-editable image-style PDF certificates only for trainees with a valid recent `PASSED` result.
   - Person certificates are saved in `04_Certificates\Person`.
   - CP certificates are saved in `04_Certificates\Competent Person`.

7. `Send certificate email`
   - Uses the `Person Training - Certificate` or `CP Training - Certificate` template.
   - Fills in the recipient email.
   - Attaches the generated PDF certificate.
   - Sends the email directly to the trainee who has passed.

## What Is Automated

- No manual key-in of trainee details.
- No manual SharePoint Site access entry.
- No manual training invitation email preparation.
- No manual pass/fail checking; the result and passed date are shown on screen.
- No manual ESR certificate preparation.
- No manual certificate attachment and email preparation.

## Notes

- Close related Excel files and Outlook drafts before running the tool.
- Please leave the mouse and keyboard alone while SharePoint or Outlook automation is running.
- If someone passed before but the result is older than 6 months, the tool will not use that old result as the current pass.
- If Outlook or SharePoint gets stuck, close the related windows and run that step again.
- The tool is now close to fully automated, but small bugs may still appear when Microsoft updates Outlook or SharePoint.

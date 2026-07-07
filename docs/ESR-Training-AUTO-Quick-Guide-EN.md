# ESR P/CP Training Automation - Quick Guide

The ESR P/CP training workflow is now around **95% automated** and ready for day-to-day use. A few small bugs may still appear as Outlook or SharePoint changes; these will be fixed as they are found.

Email templates are stored here:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\Training Templates
```

Before using the templates, please update the signature at the bottom so it shows your own name.

## Before You Start

1. Use `Person _ CP Candidate Request.oft` when asking a contractor to provide the list of people who need Person or Competent Person training.
2. When the contractor returns the completed register, save it in:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\01_P_CP Candidate Lists
```

3. Open the automation folder:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Safety Document - SFD Register
```

4. Double-click either:

```text
Run ESR Training Automation (English).cmd
Run ESR Training Automation (中文).cmd
```

## Recommended Workflow

1. `Import contractor P/CP candidate lists`
   - Imports the contractor's completed candidate register into `TWSHXHV_ESR_OverallRegister`.
   - The processed candidate file is moved to `Archive`.

2. `Add pending trainees to SharePoint Site access`
   - Opens the Training Hub and adds pending white-background trainees to Site access.
   - Please do not use the mouse or keyboard while this step is running.

3. `Send training invitation emails`
   - Opens the correct email template for Person and CP.
   - Person recipients are added to BCC and sent automatically.
   - CP recipients are added to BCC and sent automatically.
   - Please check the pending white-background list before running this step, as it will send the emails.

4. `Scan pending white-background entries`
   - Shows the trainees still waiting to be processed.

5. `Check Training Hub result status`
   - Searches the Training Hub result workbooks.
   - Person passing score: `>= 36`.
   - CP passing score: both Module 1 and Module 2 must be `>= 20`.
   - Only results with a `Completion time` within roughly the last 6 months are treated as valid.
   - If the tool only finds an older matching name, it is shown as an old reference record and is not treated as `PASSED`.
   - If a valid recent result is passed, the screen shows the date when the person `PASSED`.

6. `Generate PDF certificates for PASSED trainees`
   - Automatically creates non-editable PDF certificates only for trainees with a valid recent `PASSED` result.
   - Certificates are saved here:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Certificates - CRT\2. Ready to be uploaded
```

7. `Prepare Outlook certificate email attachment`
   - Use the `Person Training - Certificate` or `CP Training - Certificate` template.
   - Send the generated PDF certificate to the trainee who has passed.

## What Is Automated

- No manual key-in of trainee details.
- No manual SharePoint Site access entry.
- No manual training invitation email preparation.
- No manual pass/fail checking; the result and passed date are shown on screen.
- No manual ESR certificate preparation.

## Notes

- Close related Excel files and Outlook drafts before running the tool.
- Please leave the mouse and keyboard alone while SharePoint or Outlook automation is running.
- If someone passed before but the result is older than 6 months, the tool will not use that old result as the current pass.
- If Outlook or SharePoint gets stuck, close the related windows and run that step again.
- The tool is now close to fully automated, but small bugs may still appear when Microsoft updates Outlook or SharePoint.

# ESR P/CP Training Automation - Quick Guide

The ESR P/CP training workflow is now around 80% automated and ready for day-to-day use.

Email templates are stored here:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\Training Templates
```

Before using the templates, please update the signature at the bottom so it shows your own name.

## Workflow

1. Use `Person _ CP Candidate Request.oft` when asking a contractor to provide the list of people who need Person or Competent Person training.
2. When the contractor returns the completed register, save it in:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Training Hub\01_P_CP Candidate Lists
```

3. Go to:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Safety Document - SFD Register
```

4. Double-click either:

```text
Run ESR Training Automation (English).cmd
Run ESR Training Automation (Chinese).cmd
```

5. Follow steps `1` to `4` in the tool. Step `5` is still being tested.
6. The ESR certificate will be generated automatically and saved here:

```text
\OAIC Ltd\PROJECT TWSHXESR - Documents\General\Certificates - CRT\2. Ready to be uploaded
```

7. Use the `Person Training - Certificate` or `CP Training - Certificate` email template, attach the generated certificate, and send it to the trainee who has passed.

## What Is Automated

- No manual key-in of trainee details.
- No manual pass/fail checking; the result is shown on screen.
- No manual certificate preparation.

The final step, where the email is prepared automatically and left for your review before sending, will be added in a future update.

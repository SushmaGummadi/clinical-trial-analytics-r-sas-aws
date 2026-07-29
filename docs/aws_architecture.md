# AWS S3 design

Use a private bucket with Block Public Access enabled:

```text
clinical-trial-r-sas-project/
  raw/
  processed/
  outputs/tables/
  outputs/figures/
  outputs/sas-validation/
  reports/
```

Do not store AWS access keys in this repository. Configure credentials outside the project, use least-privilege access, enable default encryption, and review files before synchronization.


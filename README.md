# Clinical Trial Analytics Using R, SAS and AWS

## Project Overview

This portfolio project demonstrates an end-to-end clinical trial analysis workflow using publicly available CDISC ADaM Pilot 01 datasets.

The project follows a reproducible clinical-programming workflow similar to that used in pharmaceutical research and regulatory submissions.

The analyses were completed entirely in R using Quarto notebooks and reproduce typical deliverables prepared by Clinical SAS Programmers and Statistical Programmers.

---

## Objectives

The project demonstrates how to

- import CDISC ADaM datasets
- perform quality checks
- summarise baseline characteristics
- analyse efficacy endpoints
- analyse treatment-emergent adverse events
- generate publication-quality tables and figures
- create a reproducible clinical study report

---

## Project Structure

```
clinical-trial-analytics-r-sas-aws/

├── data/
├── outputs/
│   ├── figures/
│   └── tables/
├── reports/
│   └── r/
│       └── 05_final_report.html
├── r/
│   ├── 01_data_ingestion.qmd
│   ├── 02_population_baseline.qmd
│   ├── 03_efficacy_analysis.qmd
│   ├── 04_safety_analysis.qmd
│   └── 05_final_report.qmd
└── README.md
```

---

## Analysis Workflow

### Notebook 1

Data import and validation

- Imported CDISC ADaM datasets
- Performed structural validation
- Checked missing values
- Generated cleaned analysis datasets

---

### Notebook 2

Baseline population analysis

- Demographics
- Baseline disease characteristics
- Treatment-group comparability
- Publication-quality baseline table

---

### Notebook 3

Efficacy analysis

- ADAS-Cog(11) trajectory
- Week 24 efficacy model
- Adjusted treatment differences
- Regression diagnostics

---

### Notebook 4

Safety analysis

- Treatment-emergent adverse events
- Serious adverse events
- Fatal events
- Study discontinuation
- Week 24 completion
- Safety figures

---

### Notebook 5

Integrated clinical report

- Executive summary
- Methods
- Efficacy results
- Safety results
- Discussion
- Limitations
- Conclusions

---

## Main Findings

### Efficacy

Neither Xanomeline High Dose nor Xanomeline Low Dose demonstrated a statistically significant adjusted treatment effect compared with placebo.

### Safety

Both Xanomeline treatment groups experienced

- higher treatment-emergent adverse event rates
- higher treatment-related adverse event rates
- higher discontinuation rates
- lower Week 24 completion rates

Overall, the analyses suggested an uncertain efficacy signal accompanied by a less favourable tolerability profile.

---

## Technologies

- R
- tidyverse
- Quarto
- gt
- ggplot2
- CDISC ADaM
- Clinical trial reporting

---

## Disclaimer

This project uses publicly available CDISC Pilot 01 data for educational and portfolio purposes only.

It is not intended to reproduce regulatory analyses or clinical conclusions from the original study.

## AWS Deployment

The integrated clinical report was deployed as a static website using
Amazon S3.

The deployment workflow included:

- rendering a self-contained HTML report with Quarto;
- preparing the report as `index.html`;
- uploading the report to an S3 general-purpose bucket;
- configuring S3 static website hosting;
- applying a public-read bucket policy; and
- validating the website through the S3 website endpoint.

Only public portfolio outputs were deployed. No credentials, private
datasets, or confidential clinical information were uploaded to AWS.

The deployment process is documented in
`r/06_aws_deployment.qmd`.

### Live Report

View the deployed clinical trial report: http://sushma-clinical-trial-analytics-2026-860803563984-eu-west-2-an.s3-website.eu-west-2.amazonaws.com/
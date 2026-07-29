# Analysis plan

## Objective

Estimate differences in change from baseline in ADAS-Cog at a prespecified final visit between each active treatment group and placebo, and summarize treatment-emergent adverse events by randomized treatment.

## Populations

- Baseline: participants in ADSL meeting the selected analysis-population flag.
- Efficacy: flagged participants with baseline and selected post-baseline ADAS-Cog measurements.
- Safety: participants in the safety population; event summaries use treatment-emergent events where the dataset supports that definition.

## Efficacy

Primary portfolio endpoint: change from baseline at the selected final visit. Fit `CHG ~ treatment + BASE + AGE + SEX`. Report active-minus-placebo adjusted estimates, 95% confidence intervals, and p-values. Confirm whether a lower ADAS-Cog score represents improvement before interpreting signs.

## Safety

Summarize participants with any AE, serious AE, AE leading to discontinuation, common preferred terms, system organ classes, and severity. Deduplicate by participant and category before calculating percentages.

## Missing data and multiplicity

Version 1 uses available cases and treats results as exploratory. No multiplicity adjustment is planned. State these limitations prominently.

## Validation

Reproduce participant counts, demographic summaries, the primary efficacy model, and AE participant frequencies in SAS. Record discrepancies and their resolution.


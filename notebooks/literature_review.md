# Literature Review

Alzheimer’s disease (AD) is a progressive neurodegenerative disorder characterized by cognitive decline and structural brain atrophy. Neuroimaging studies have consistently shown that reductions in brain volume are strongly associated with both aging and Alzheimer’s disease severity. In particular, whole brain volume is known to decline gradually with age and more rapidly in individuals with Alzheimer’s disease, reflecting disease-related neurodegeneration.

These structural changes are closely linked to clinical measures such as the Clinical Dementia Rating (CDR):

- 0 = no dementia  
- 0.5 = very mild  
- 1 = mild  
- 2 = moderate  
- 3 = severe dementia  

And the Mini-Mental State Examination (MMSE):

- 24–30: normal cognition  
- 19–23: mild cognitive impairment  
- 10–18: moderate cognitive impairment  
- 0–9: severe cognitive impairment  

A widely used dataset for studying these relationships is the Open Access Series of Imaging Studies (OASIS), introduced by Marcus et al. (2007). This dataset combines MRI-derived brain measurements with demographic and clinical variables, making it particularly suitable for statistical modeling of Alzheimer’s disease. Key variables include age, biological sex (M/F), years of education (Educ), and socioeconomic status (SES), as well as brain imaging measures such as estimated total intracranial volume (eTIV) and normalized whole-brain volume (nWBV).

## Education Levels (Educ)

- Level 1: Less than high school graduation  
- Level 2: High school graduate (or equivalent)  
- Level 3: Some college (did not complete a 4-year degree)  
- Level 4: College graduate (Bachelor’s degree)  
- Level 5: Beyond college (graduate or professional degree, e.g., MA, PhD, MD)  

## Socioeconomic Status (SES)

- Level 1: Upper class  
- Level 2: Upper middle class  
- Level 3: Middle class  
- Level 4: Lower middle class  
- Level 5: Lower class  

Among these, nWBV is of particular importance as it provides a normalized measure of brain volume that captures atrophy, while eTIV reflects head size and serves as a scaling factor. Clinical variables such as CDR and MMSE provide complementary measures of disease presence and severity. Socioeconomic status (SES) and education level are also important covariates, as they capture social and cognitive factors that may influence disease risk and progression.

Previous studies using the OASIS dataset and similar neuroimaging data have primarily focused on identifying associations between brain structure and cognitive decline. For example, Fotenos et al. (2005) and Buckner et al. (2004) demonstrated strong relationships between brain atrophy and Alzheimer’s disease severity. In addition, a large body of work has applied machine learning techniques to predict Alzheimer’s disease from MRI data. Methods such as support vector machines (Klöppel et al., 2008) and deep learning models (Suk et al., 2014) achieve high classification accuracy by leveraging imaging features such as brain volume. However, these approaches typically emphasize predictive performance and often provide limited interpretability or uncertainty quantification.

In contrast, Bayesian statistical methods offer a principled framework for modeling uncertainty and incorporating prior knowledge in the analysis of complex biomedical data. Rather than producing point estimates, Bayesian approaches yield full posterior distributions for model parameters, allowing researchers to quantify uncertainty through credible intervals and probabilistic statements. This is particularly valuable in medical contexts, where uncertainty plays a critical role in decision-making.

Bayesian methods have been successfully applied in Alzheimer’s research to model disease progression and cognitive decline. For instance, Fonteijn et al. (2012) introduced a Bayesian event-based model to characterize the progression of Alzheimer’s disease as a sequence of latent events, while Donohue et al. (2014) used Bayesian hierarchical models to analyze longitudinal cognitive data (different datasets). These approaches demonstrate the flexibility of Bayesian modeling in capturing complex relationships and latent structures in neurodegenerative diseases.

Despite these advantages, Bayesian approaches have been relatively underutilized in studies based on the OASIS dataset, where most analyses rely on frequentist regression or machine learning techniques.

## Summary

Existing literature establishes strong links between brain atrophy, demographic factors, and Alzheimer’s disease. However, it largely relies on predictive or frequentist approaches. By adopting a Bayesian perspective, this study contributes to the literature by providing interpretable, uncertainty-aware estimates of how brain structure and clinical variables jointly influence Alzheimer’s disease risk and severity.

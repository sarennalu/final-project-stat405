---
output:
  pdf_document: default
  html_document: default
---
# Problem Formulation:
Alzheimer's disease is a progressive neurodegenerative disorder and the most common cause of dementia, characterized by declining memory and cognition. Early detection through biomarkers and MRI data is critical, as delayed treatment is associated with worse outcomes. In this project, we investigate clinical risk factors associated with Alzheimer's disease using Bayesian Statistics, aiming to identify which groups of people are at higher risk and support early intervention.

## Our research questions are:

i) **How are brain volume, age and biological sex associated with the probability of receiving a diagnosis of Alzheimer’s disease and the diagnosed CDR (Clinical dementia rating)**
- Is there an effect of sex on Alzheimer's disease probability?
- Do individuals with lower brain volume have higher CDR scores?
- Does higher education levels dampen the effect of brain volume on CDR?


## Basic Biological Context and Important Variables
**CDR (The Clinical Dementia Rating Scale)** is a common tool used to assess cognitive impairment.  CDR score of 0 indicates no dementia, 0.5 indicates questionable dementia, 1 is mild dementia, 2 is moderate, and 3 indicates severe dementia. Any individual with a score > 0 has been diagnosed with probable AD. Hence, CDR is a diagnostic as well as a severity tool. 

**MMSE: (Mini-Mental State Examination score)** This is a brief test of global cognitive function, where lower scores usually mean worse cognition. 

**eTIV (estimated total intracranial volume)** Estimated total volume inside skull, estimated from MRI results. 

**nWBV (normalized whole-brain volume)**  This is the proportion of the intracranial cavity occupied by brain tissue. A lower volume would indicate more brain atrophy. Normalization ensures that differences in nWBV correspond to brain atrophy instead of differences in head size.  We are interested in this variable because brain atrophy is a key characteristic of Alzheimer’s disease progression. 

## Key Modelling Challenges:

The key modelling challenge is that the response variable, CDR, is an ordinal variable, with higher values indicating higher disease severity. An ideal Bayesian model using our dataset has to take into account the structure of the categories. We will begin with naive models treating CDR as a binary random variable or as an unordered categorical variable. Then we would build upon these with a more sophisticated model to include the ordering. This is grounded in the framework of progressively increasing model complexity, as often done in the course. 

In addition, we will assess the posterior predictive probabilities for our model through cross-validation, a tool that we were introduced to in the course. We will apply concepts from the theme of Bayesian calibration in this section. 


### Sources:
<br> https://www.alz.org/alzheimers-dementia/what-is-dementia 
<br> https://www.who.int/news-room/fact-sheets/detail/dementia 



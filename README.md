# STAT 405 Final Project: Bayesian Modeling of Alzheimer’s Disease Risk Using Brain Volume and Clinical Factors
Team:

Michael Güntert: 58265232 \
Name 2 \
Name 3 

## Problem description
Alzheimer’s disease (AD) is a neurodegenerative disorder characterized by progressive cognitive decline and structural brain changes. Brain imaging studies show that brain atrophy (reduction in brain volume) is associated with Alzheimer’s development.

The project aims to investigate how brain structure and clinical risk factors influence Alzheimer’s disease probability using Bayesian statistical modeling.

## Potential Research Questions

Chosen question: How well does total brain volume predict whether or not a patient has Alzheimer's, and, among diagnosed patients, the severity of dementia? <br>
Backup question: What is the posterior probability of Alzheimer’s given age and biological sex?

## Chosen Dataset Description
### Primary Dataset: OASIS-1 (Open Access Series of Imaging Studies)
Source: Washington University in St. Louis (Knight ADRC)

Type: Neuroimaging (MRI) & Clinical Data

Overview: OASIS-1 is a cross-sectional dataset consisting of a collection of 416 subjects aged 18 to 96. It was specifically designed to provide high-quality brain imaging data to the scientific community for free.

#### Key Subjects: 
* 100 subjects over age 60 were clinically diagnosed with very mild to moderate Alzheimer’s disease (AD).
The remaining subjects include healthy young, middle-aged, and older adults.

#### Data Included:
MRI Scans: 3-4 individual T1-weighted MRI scans per subject.

Clinical Scores: Mini-Mental State Examination (MMSE) and Clinical Dementia Rating (CDR).

Demographics: Age, gender, years of education, and socioeconomic status (SES).

Derived Anatomy: Estimated total intracranial volume (eTIV), normalized whole-brain volume (nWBV), and atlas scaling factor (ASF).

### Backup Dataset:  Alzheimer's Disease Dataset
Source: Kaggle

Overview: Unlike OASIS-1, which focuses on brain imaging, this Kaggle dataset is a flat CSV file containing clinical and lifestyle risk factors for 2,149 patients. (Synthetic dataset)

#### Key Features (35 total):

Demographics: Age (60–90), Gender, Ethnicity, Education Level.

Lifestyle Factors: BMI, Smoking, Alcohol Consumption, Physical Activity, Diet Quality, and Sleep Quality.

Medical History: Family history of Alzheimer’s, Cardiovascular Disease, Diabetes, Depression, Head Injury, and Hypertension.

Clinical Vitals: Blood pressure (Systolic/Diastolic) and a full Cholesterol panel (Total, LDL, HDL, Triglycerides).

Cognitive/Functional: MMSE, Functional Assessment scores, Memory Complaints, Behavioral Problems, and Activities of Daily Living (ADL) scores.

#### Target Variable: 
A binary Diagnosis column (0 = No Alzheimer's, 1 = Alzheimer's Disease).

## Bayesian Models
### Model 1
### Model 2
### Model 3

## Posterior Methods
### Method 1
### Method 2

## Model Evalutaion
### Posterior diagnostics / predictive checks?
### Predictive Performance
### Model Comparison

## Planned Methodology We Will Use

Our workflow will be using a feature branch system.  

1. For any issues and bugfixes, a separate branch should be created.
2. Once the work is done, a pull request should be created and reviewed by another team member.
3. If the team member approves the review, the code can be merged into the `main` branch.

## How the Work will be Divided

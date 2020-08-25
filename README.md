# Factors-Affecting-Predilection-Towards-Scamming
Understanding the psychological and sociological techniques used by scammers is an important part of identifying and trying to address the root cause of online fraud attacks. While some research focusing on the experiences and psychology of victims of these attacks as well as the countermeasures that can be taken to protect them from such attacks exists, there is little research on the psychology and motivation of those who commit online fraud. This project aims to uncover motivations of online fraudsters. 

# Surveys Used 
The Surveys_used folder consists full surveys that have been used in the study. References to those surveys :

1. CCI-R+ : Computer Crime Index – Revised Plus CCI – R+, (Rogers, Seigfried-Spellar & Bayes, 2017)

2. Fraud Constructs : (Harrison et. al., 2018)
3. Dark Triad MIDSS : Instrument to measure Dark Triad elements D3-Short (Paulhus, 2013)
4. DOSPERT : Instrument to measure Risk Perception (Blais & Weber, 2006)
5. soc d3 :  Instrument to measure Spheres of Control (Paulhus, 1990)

In order to reduce survey fatigue, I only included certain sections of some of the survey scales. From the DOSPERT Risk Perception Scale, I included only Social, Financial and Ethical risk questions. From the Computer Crime Index Scale, I chose a subset of 30 questions from the survey and had participants indicate "Yes" or "No" for indulging in those acts. 

I would advise keeping track of all questions in a seprate file (a research code book of sorts), which will make it easier to recode the columns after we have all our data.

# Data Used 
The data that was used is not included because of confidentiality agreement, and data points have also been manipulated to ensure that responses cannot be traced back to individuals. However, since the surveys used have been provided the results should be reproducible.

# scammer_motives.ipynb
This script will test the hypotheses that were developed after a literature review

# SEM_Scammer_Model.R
This script evaluates the hypothesized model using Structural Equation Modeling

# Future Work
A lot of information was collected for this project, however the scripts only test the hypotheses developed. We could perform a PCA to detect what components contribute to 'Intent' to commit online scams or to an individual being classified as a 'CyberScammer' or 'Non-CyberScammer' (these variables have already been manipulated in the python notebook. These components can be used as features in a Machine Learning model to predict if the individual has the intent to commit fraud (prediction) or if the individual is a cyber-scammer or not (classification). 

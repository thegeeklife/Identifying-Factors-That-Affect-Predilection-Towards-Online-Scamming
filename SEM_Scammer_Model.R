
R version 4.0.2 (2020-06-22) -- "Taking Off Again"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.72 (7847) x86_64-apple-darwin17.0]

[History restored from /Users/subi/.Rapp.history]

> dataset = read.csv("/Users/subi/Desktop/Thesis/cleaned_data.csv")
> library(lavaan)
This is lavaan 0.6-6
lavaan is BETA software! Please report any bugs.
> model <- '
+ Intent ~ Rationalization
+ Rationalization ~ Psych_Total
+ Opportunity ~ Risk_Total + Mach_Total
+ Motivation ~ Mach_Total + Narc_Total
+ Capability ~ Narc_Total
+ Mach_Total ~ SOC_ipc + SOC_spc
+ Risk_Total ~ Mach_Total + Psych_Total'
> fit3 <- sem(model, data = dataset)
> summary(fit3, fit.measures=TRUE, standardized=TRUE, rsquare=TRUE)
lavaan 0.6-6 ended normally after 28 iterations

  Estimator                                         ML
  Optimization method                           NLMINB
  Number of free parameters                         24
                                                      
  Number of observations                           293
                                                      
Model Test User Model:
                                                      
  Test statistic                               306.521
  Degrees of freedom                                32
  P-value (Chi-square)                           0.000

Model Test Baseline Model:

  Test statistic                              1229.660
  Degrees of freedom                                49
  P-value                                        0.000

User Model versus Baseline Model:

  Comparative Fit Index (CFI)                    0.767
  Tucker-Lewis Index (TLI)                       0.644

Loglikelihood and Information Criteria:

  Loglikelihood user model (H0)              -2995.504
  Loglikelihood unrestricted model (H1)      -2842.243
                                                      
  Akaike (AIC)                                6039.007
  Bayesian (BIC)                              6127.332
  Sample-size adjusted Bayesian (BIC)         6051.222

Root Mean Square Error of Approximation:

  RMSEA                                          0.171
  90 Percent confidence interval - lower         0.154
  90 Percent confidence interval - upper         0.189
  P-value RMSEA <= 0.05                          0.000

Standardized Root Mean Square Residual:

  SRMR                                           0.191

Parameter Estimates:

  Standard errors                             Standard
  Information                                 Expected
  Information saturated (h1) model          Structured

Regressions:
                    Estimate  Std.Err  z-value  P(>|z|)   Std.lv  Std.all
  Intent ~                                                               
    Rationalizatin     0.931    0.038   24.302    0.000    0.931    0.816
  Rationalization ~                                                      
    Psych_Total        1.391    0.081   17.279    0.000    1.391    0.710
  Opportunity ~                                                          
    Risk_Total         0.181    0.073    2.493    0.013    0.181    0.107
    Mach_Total         0.246    0.072    3.405    0.001    0.246    0.157
  Motivation ~                                                           
    Mach_Total         0.635    0.094    6.731    0.000    0.635    0.340
    Narc_Total        -0.125    0.092   -1.360    0.174   -0.125   -0.064
  Capability ~                                                           
    Narc_Total         0.634    0.089    7.159    0.000    0.634    0.315
  Mach_Total ~                                                           
    SOC_ipc           -0.149    0.055   -2.729    0.006   -0.149   -0.173
    SOC_spc            0.040    0.064    0.630    0.529    0.040    0.040
  Risk_Total ~                                                           
    Mach_Total         0.194    0.052    3.712    0.000    0.194    0.210
    Psych_Total        0.112    0.047    2.386    0.017    0.112    0.135

Covariances:
                   Estimate  Std.Err  z-value  P(>|z|)   Std.lv  Std.all
 .Intent ~~                                                             
   .Opportunity       0.099    0.083    1.196    0.232    0.099    0.070
   .Motivation        0.063    0.094    0.668    0.504    0.063    0.039
   .Capability       -0.014    0.098   -0.146    0.884   -0.014   -0.009
 .Opportunity ~~                                                        
   .Motivation        0.886    0.113    7.861    0.000    0.886    0.517
   .Capability        1.083    0.122    8.890    0.000    1.083    0.608
 .Motivation ~~                                                         
   .Capability        0.784    0.127    6.150    0.000    0.784    0.385

Variances:
                   Estimate  Std.Err  z-value  P(>|z|)   Std.lv  Std.all
   .Intent            1.325    0.109   12.104    0.000    1.325    0.333
   .Rationalizatin    1.515    0.125   12.104    0.000    1.515    0.495
   .Opportunity       1.500    0.124   12.104    0.000    1.500    0.957
   .Motivation        1.958    0.162   12.104    0.000    1.958    0.879
   .Capability        2.117    0.175   12.104    0.000    2.117    0.901
   .Mach_Total        0.622    0.051   12.104    0.000    0.622    0.974
   .Risk_Total        0.510    0.042   12.104    0.000    0.510    0.935

R-Square:
                   Estimate
    Intent            0.667
    Rationalizatin    0.505
    Opportunity       0.043
    Motivation        0.121
    Capability        0.099
    Mach_Total        0.026
    Risk_Total        0.065

> 

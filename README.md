# logistic_growth

This file will describe the contents of this repository, which contains R scripts for a reproducible analysis of logistic growth, based on **dataset 1** from the Github practical from 7/11/23. It was originally forked from files from the repo josegabrielnb/logistic_growth 

Repository contents: 
---
  - 'project.Rproj': contains detail about the settings used by R in this project
  - package-versions.txt': contains list of the packages needed for this analysis
  - 'experiment1.csv': contains dataset from experiment 1; showing the population size (N) at time t; from t=0 to t=4980
  - ' plot_data.R': contains an R script for an initial plot of the data, and for a graph of the log-transformed data
  - 'fit_linear_model.R': contains R script to estimate model parameters (N0 & r) using 2 linear approximations
  - 'plot_data_and_model.R': contains R script combining model parameters into a function for logistic growth, and plots the data & function

Question 1
===

Introduction
---
This analysis was carried out to estimate key parameters about a population of *E. Coli* under logistic growth. The parameters of interest were N0 (initial population size), r (growth rate), and k (carrying capacity). The data was transformed and plotted, 2 linear models were used to estimate parameters, and then these parameters were fed into a function for logistic growth of the population, which was plotted with the data. 

Scripts in detail
---
- **'plot_data.r'**
  
This file uses ggplot to first plot an untransformed scatterplot of the data, with t on the x axis, and N on the y axis. It then plots a transformed scatterplot, with t on the x axis, and log(N) on the y axis. This second plot has 2 different linear sections to the graph (one where t<1000 and one were t>3000), demonstrating how we can use 2 different linear models to model the graph and find the values of the parameters of interest.

- **'fit_linear_model.r'**

This file generates 2 linear models to fit the data:

1) when t<1000, and K>>N0: the equation can be modelled by N(t) = N0 * e^(rt), or **ln(N) = ln(N0) + rt**

Subset the data so that t<1000, and generate this linear model. The summary from this linear model tells us log(N0) (indicated by the estimate of the intercept), and r (indicated from the estimate of t).

2) when t>3000 and the population number is constant: the equation can be modelled by **N(t) = k**

Subset the data so that t>3000, and generate this linear mode. The summary from the linear model tells us k (indicated by the estimate of the intercept).

- **'plot_data_and_model.r'**

This file creates a logistic function to express N at time t, using the variables N0, r, and k. These variables are defined, using the outputs from the linear models in the previous file. The data is then plotted, with the logistic function added as a line to the graph. The function forms a line through all the data points, demonstrating that the estimates we calculated were correct. 

Results
---
The data file used was 'experiment1.csv'. The estimates obtained were:
- N0 = exp(6.883) = 975.55
- R = 0.01004
- K = 6e+10 = 60,000,000,000
  


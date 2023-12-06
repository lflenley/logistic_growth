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

Introduction
---
This analysis was carried out to estimate key parameters about a population of *E. Coli* under logistic growth. The parameters of interest were N0 (initial population size), r (growth rate), and k (carrying capacity). The data was transformed and plotted, 2 linear models were used to estimate parameters, and then these parameters were fed into a function for logistic growth of the population, which was plotted with the data. 

Scripts in detail
---
- 'plot_data.r'
This file uses ggplot to first plot an untransformed scatterplot of the data, with t on the x axis, and N on the y axis. It then plots a transformed scatterplot, with t on the x axis, and log(N) on the y axis. This second plot has 2 different linear sections to the graph (one where t<1500 and one were t>3000), demonstrating how we can use 2 different linear models to model the graph and find the values of the parameters of interest.
  


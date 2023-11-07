#Script to plot the logistic growth data

growth_data <- read.csv("experiment1.csv")

install.packages("ggplot2")
library(ggplot2)

#plot graph of the data
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

#plot graph of the log transformed data
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  scale_y_continuous(trans='log10')

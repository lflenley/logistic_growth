#install.packages("gridExtra")
#install.packages("ggplot2)
#install.packages('ragg')

library(ggplot2)
library(gridExtra)
library(ragg)

#load the data
growth_data <- read.csv("experiment1.csv")

#create the logistic function
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

#create the exponential function
exponential_fun <- function(t){
  N <- N0 * exp(r*t)
  
  return(N)
  
}

#define the parameters
N0 <- exp(6.883) 

r <- 1.004e-02

K <- 6e+10 

#generate the full graph
full_graph <- ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  geom_function(fun=exponential_fun, colour="green")+
  geom_point(size=0.5)+
  labs(title = "Full graph of exponential and logistic growth functions, with data plotted")
  
full_graph <- full_graph +
  annotate("text", x = 1400, y = 4.75e+24, label = "Logistic function: red", size = 4) +
  annotate("text", x = 1400, y = 4e+24, label = "Exponential function: green", size = 4) +
  annotate("text", x = 1400, y = 3.25e+24, label = "Data points: black", size = 4)

full_graph

#generate the partial graph
partial_graph <- ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  geom_function(fun=exponential_fun, colour="green")+
  geom_point(size=0.5)+
  xlim(c(1200,2100))+
  labs(title = "Partial graph of exponential and logistic growth functions, with data plotted")

partial_graph <- partial_graph +
  annotate("text", x = 1400, y = 1e+12, label = "Logistic function: red", size = 4) +
  annotate("text", x = 1400, y = 1.2e+12, label = "Exponential function: green", size = 4) +
  annotate("text", x = 1400, y = 0.8e+12, label = "Data points: black", size = 4)

partial_graph

#save the partial figure
agg_png("figures/partial_graph_logistic_and_exponential.png", width = 40, height = 15, units = "cm", res=600, scaling=1)
  partial_graph
dev.off()

#save the full figure
agg_png("figures/full_graph_logistic_and_exponential.png", width = 40, height = 15, units = "cm", res=600, scaling=1)
full_graph
dev.off()

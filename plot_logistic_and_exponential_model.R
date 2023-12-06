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

#generate the graph
ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  geom_function(fun=exponential_fun, colour="green")

  geom_point()



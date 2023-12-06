#Script to plot data and model

growth_data <- read.csv("experiment1.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.883) 
  
r <- 1.004e-02
  
K <- 6e+10 

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')

#>>> /usr/bin/git push origin HEAD:refs/heads/main
To https://github.com/lflenley/logistic_growth.git
! [rejected]        HEAD -> main (fetch first)
error: failed to push some refs to 'https://github.com/lflenley/logistic_growth.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

?git push


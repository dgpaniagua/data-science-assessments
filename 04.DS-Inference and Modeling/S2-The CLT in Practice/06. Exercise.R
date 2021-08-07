##EXERCISE:

# From exercise 1:
take_sample <- function(p, N){
  samples <- sample(c(1,0), N, replace=TRUE, prob=c(p, 1-p))
  mean(samples)
}

# Define `p` as the expected value equal to 0.45
p <- 0.45

# Define `N` as the sample size
N <- 100

# Calculate the standard error

##ANSWER

sqrt(p*(1-p)/N)
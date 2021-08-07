##EXERCISE:

# From exercise 1:
take_sample <- function(p, N){
  samples <- sample(c(1,0), N, replace=TRUE, prob=c(p, 1-p))
  mean(samples)
}

# Define `p` as the proportion of Democrats in the population being polled
p <- 0.45

# Define `N` as the number of people polled
N <- 100

# The variable `B` specifies the number of times we want the sample to be replicated
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Generate `errors` by subtracting the estimate from the actual proportion of Democratic voters
errors <- replicate(B, p - take_sample(p, N))

# Generate a qq-plot of `errors` with a qq-line showing a normal distribution


##ANSWER

qqnorm(errors) 
qqline(errors)
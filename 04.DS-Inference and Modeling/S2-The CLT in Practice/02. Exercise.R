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

# Create an objected called `errors` that replicates subtracting the result of the `take_sample` function from `p` for `B` replications


# Calculate the mean of the errors. Print this value to the console.

##ANSWER

# Create an objected called `errors` that replicates subtracting the result of the `take_sample` function from `p` for `B` replications
errors <- replicate(B, p - take_sample(p, N))

# Calculate the mean of the errors. Print this value to the console.
mean(errors)
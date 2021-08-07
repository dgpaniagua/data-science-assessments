##EXERCISE:

# Write a function called `take_sample` that takes `p` and `N` as arguements and returns the average value of a randomly sampled population.


# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Define `p` as the proportion of Democrats in the population being polled
p <- 0.45

# Define `N` as the number of people polled
N <- 100

# Call the `take_sample` function to determine the sample average of `N` randomly selected people from a population containing a proportion of Democrats equal to `p`. Print this value to the console.


##ANSWER

# Write a function called `take_sample` that takes `p` and `N` as arguements and returns the average value of a randomly sampled population.
take_sample <- function(p, N){
  samples <- sample(c(1,0), N, replace=TRUE, prob=c(p, 1-p))
  mean(samples)
}

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Define `p` as the proportion of Democrats in the population being polled
p <- 0.45

# Define `N` as the number of people polled
N <- 100

# Call the `take_sample` function to determine the sample average of `N` randomly selected people from a population containing a proportion of Democrats equal to `p`. Print this value to the console.
take_sample(p, N)
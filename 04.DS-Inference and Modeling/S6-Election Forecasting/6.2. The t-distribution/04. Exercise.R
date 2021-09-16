######### EXERCISE: #########

# The vector of filtered heights 'x' has already been loaded for you. Calculate the mean.
mu <- mean(x)

# Use the same sampling parameters as in the previous exercise.
set.seed(1)
N <- 15
B <- 10000

# Generate a logical vector 'res' that contains the results of the simulations using the t-distribution

# Calculate the proportion of times the simulation produced values within the 95% confidence interval. Print this value to the console.

######### ANSWER #########
# Generate a logical vector 'res' that contains the results of the simulations using the t-distribution
res <- replicate(B, {
  samp <- sample(x, N, replace=TRUE)
  interval <- qt(0.975, N-1)*sd(samp)/sqrt(N)
  between(mu, mean(samp) - interval, mean(samp) + interval)
})

# Calculate the proportion of times the simulation produced values within the 95% confidence interval. Print this value to the console.
mean(res)
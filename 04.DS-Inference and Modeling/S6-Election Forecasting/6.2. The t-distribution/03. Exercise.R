######### EXERCISE: #########

# Load the neccessary libraries and data
library(dslabs)
library(dplyr)
data(heights)

# Use the sample code to generate 'x', a vector of male heights
x <- heights %>% filter(sex == "Male") %>%
  .$height

# Create variables for the mean height 'mu', the sample size 'N', and the number of times the simulation should run 'B'
mu <- mean(x)
N <- 15
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Generate a logical vector 'res' that contains the results of the simulations

# Calculate the proportion of times the simulation produced values within the 95% confidence interval. Print this value to the console.

######### ANSWER #########
# Generate a logical vector 'res' that contains the results of the simulations
res <- replicate(B, {
  samp <- sample(x, N, replace=TRUE)
  interval <- qnorm(0.975)*sd(samp)/sqrt(N)
  between(mu, mean(samp) - interval, mean(samp) + interval)
})

# Calculate the proportion of times the simulation produced values within the 95% confidence interval. Print this value to the console.
mean(res)

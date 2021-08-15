######### EXERCISE: #########

----------------------
# From Exercise 1:
# Load the 'dslabs' package and data contained in 'heights'
library(dslabs)
data(heights)
# Make a vector of heights from all males in the population
x <- heights %>% filter(sex == "Male") %>%
  .$height
---------------------
  
# The vector of all male heights in our population `x` has already been loaded for you. You can examine the first six elements using `head`.
head(x)

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Define `N` as the number of people measured
N <- 50

# Define `X` as a random sample from our population `x`

# Calculate the sample average. Print this value to the console.

# Calculate the sample standard deviation. Print this value to the console.

######### ANSWER #########

# Define `X` as a random sample from our population `x`
X <- sample(x, N, replace=TRUE)

# Calculate the sample average. Print this value to the console.
mean(X)

# Calculate the sample standard deviation. Print this value to the console.
sd(X)
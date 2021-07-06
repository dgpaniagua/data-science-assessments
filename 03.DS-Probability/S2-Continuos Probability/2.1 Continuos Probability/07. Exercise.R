## STATEMENT:

# The variable `B` specifies the number of times we want the simulation to run.
B <- 1000

# Use the `set.seed` function to make sure your answer matches the expected result after random number generation.
set.seed(1)

# Create an object called `highestIQ` that contains the highest IQ score from each random distribution of 10,000 people.


# Make a histogram of the highest IQ scores.

## ANSWER:

# Create an object called `highestIQ` that contains the highest IQ score from each random distribution of 10,000 people.
highestIQ <- replicate(B, max(rnorm(10000, 100, 15)))

# Make a histogram of the highest IQ scores.
hist(highestIQ)

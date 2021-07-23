##EXERCISE:

## Make sure you fully follow instructions, including printing values to the console and correctly running the `replicate` loop. If not, you may encounter "Session Expired" errors.

# The variable `n` specifies the number of independent bets on green
n <- 10000

# The variable `B` specifies the number of times we want the simulation to run
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random number generation
set.seed(1)

# Generate a vector `S` that contains the the average outcomes of 10,000 bets modeled 10,000 times

# Compute the average of `S`

# Compute the standard deviation of `S`


##ANSWER

# Generate a vector `S` that contains the the average outcomes of 10,000 bets modeled 10,000 times
S <- replicate(B, mean(sample(c(17, -1), n, replace=TRUE, prob=c(p_green, p_not_green))))

# Compute the average of `S`
mean(S)

# Compute the standard deviation of `S`
sd(S)
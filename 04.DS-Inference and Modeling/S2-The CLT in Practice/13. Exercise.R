##EXERCISE:

# Define `N` as the number of people polled
N <-100

# Define `X_hat` as the sample average
X_hat <- 0.51

# Define `se_hat` as the standard error of the sample average


# Calculate the probability that the error is 0.01 or larger


##ANSWER

# Define `se_hat` as the standard error of the sample average
se_hat <- sqrt(X_hat*(1-X_hat)/N)

# Calculate the probability that the error is 0.01 or larger
pnorm(-0.01, 0, se_hat) + 1-pnorm(0.01, 0, se_hat)
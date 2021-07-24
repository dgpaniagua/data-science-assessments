##EXERCISE:

# Assign the number of loans to the variable `n`
n <- 10000

# Assign the loss per foreclosure to the variable `loss_per_foreclosure`
loss_per_foreclosure <- -200000

# Assign the probability of default to the variable `p_default`
p_default <- 0.03

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# The variable `B` specifies the number of times we want the simulation to run
B <- 10000

# Generate a list of summed losses 'S'. Replicate the code from the previous exercise over 'B' iterations to generate a list of summed losses for 'n' loans.  Ignore any warnings for now.

# Plot a histogram of 'S'.  Ignore any warnings for now.

##ANSWER

S <- replicate(B, {
  sum(loss_per_foreclosure * sample(c(0, 1), n, replace=TRUE, prob=c(1-p_default, p_default)))
})

# Plot a histogram of 'S'.  Ignore any warnings for now.
hist(S)
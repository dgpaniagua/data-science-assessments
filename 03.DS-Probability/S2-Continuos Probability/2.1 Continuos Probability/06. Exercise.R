## STATEMENT:

# Assign a variable 'male_avg' as the average male height.
male_avg <- 69

# Assign a variable 'male_sd' as the standard deviation for male heights.
male_sd <- 3

# Determine the height of a man in the 99th percentile of the distribution.

## ANSWER:

qnorm(0.99, male_avg, male_sd)

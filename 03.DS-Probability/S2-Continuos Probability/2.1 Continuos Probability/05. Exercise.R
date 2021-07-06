## STATEMENT:

# Assign a variable 'female_avg' as the average female height.
female_avg <- 64

# Assign a variable 'female_sd' as the standard deviation for female heights.
female_sd <- 3

# To a variable named 'taller', assign the value of a height that is one SD taller than average.


# To a variable named 'shorter', assign the value of a height that is one SD shorter than average.


# Calculate the probability that a randomly selected female is between the desired height range. Print this value to the console.

## ANSWER:

# To a variable named 'taller', assign the value of a height that is one SD taller than average.
taller <- female_avg + female_sd

# To a variable named 'shorter', assign the value of a height that is one SD shorter than average.
shorter <- female_avg - female_sd

# Calculate the probability that a randomly selected female is between the desired height range. Print this value to the console.
pnorm(taller, female_avg, female_sd) - pnorm(shorter, female_avg, female_sd)

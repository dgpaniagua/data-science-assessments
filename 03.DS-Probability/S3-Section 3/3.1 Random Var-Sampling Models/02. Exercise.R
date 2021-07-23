##EXERCISE:

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket

# Create a model to predict the random variable `X`, your winnings from betting on green. Sample one time.

# Print the value of `X` to the console

##ANSWER

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1 - p_green

# Create a model to predict the random variable `X`, your winnings from betting on green. Sample one time.
roulette <- c(-1, 17)
X <- sample(roulette, 1, replace = TRUE, prob = c(p_not_green, p_green))

# Print the value of `X` to the console
X

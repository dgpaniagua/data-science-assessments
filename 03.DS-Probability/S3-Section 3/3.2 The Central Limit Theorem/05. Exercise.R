##EXERCISE:

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# Define the number of bets using the variable 'n'
n <- 10000

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- 2 / 38

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1 - p_green

# Create a vector called `X` that contains the outcomes of `n` bets


# Define a variable `Y` that contains the mean outcome per bet. Print this mean to the console.


##ANSWER

# Create a vector called `X` that contains the outcomes of `n` bets
X <- sample(c(17, -1), n, replace=TRUE, prob=c(p_green, p_not_green))

# Define a variable `Y` that contains the mean outcome per bet. Print this mean to the console.
Y <- mean(X)
Y
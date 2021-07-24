##EXERCISE:

# Assign the loss per foreclosure to the variable `loss_per_foreclosure`
loss_per_foreclosure <- -200000

# Assign the probability of default to the variable `p_default`
p_default <- 0.03

# Assign a variable `x` as the total amount necessary to have an expected outcome of $0

# Convert `x` to a rate, given that the loan amount is $180,000. Print this value to the console.

##ANSWER

# Assign a variable `x` as the total amount necessary to have an expected outcome of $0
x <- -loss_per_foreclosure * p_default / (1-p_default)

# Convert `x` to a rate, given that the loan amount is $180,000. Print this value to the console.
x / 180000
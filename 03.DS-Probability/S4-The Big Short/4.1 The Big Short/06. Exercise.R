##EXERCISE:

# Assign the number of loans to the variable `n`
n <- 10000

# Assign the loss per foreclosure to the variable `loss_per_foreclosure`
loss_per_foreclosure <- -200000

# Assign the probability of default to the variable `p_default`
p_default <- 0.03

# Generate a variable `z` using the `qnorm` function

# Generate a variable `x` using `z`, `p_default`, `loss_per_foreclosure`, and `n`

# Convert `x` to an interest rate, given that the loan amount is $180,000. Print this value to the console.


##ANSWER

# Generate a variable `z` using the `qnorm` function
z <- qnorm(0.05)

# Generate a variable `x` using `z`, `p_default`, `loss_per_foreclosure`, and `n`
x <- -loss_per_foreclosure * ((n*p_default - z*sqrt(n*p_default*(1-p_default))) / (n*(1-p_default)+z*sqrt(n*p_default*(1-p_default))))

# Convert `x` to an interest rate, given that the loan amount is $180,000. Print this value to the console.
x / 180000
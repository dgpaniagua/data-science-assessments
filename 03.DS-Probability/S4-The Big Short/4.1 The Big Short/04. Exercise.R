##EXERCISE:

# Assign the number of loans to the variable `n`
n <- 10000

# Assign the loss per foreclosure to the variable `loss_per_foreclosure`
loss_per_foreclosure <- -200000

# Assign the probability of default to the variable `p_default`
p_default <- 0.03

# Compute the standard error of the sum of 10,000 loans


##ANSWER

sqrt(n) * abs(loss_per_foreclosure-0) * sqrt(p_default * (1-p_default))
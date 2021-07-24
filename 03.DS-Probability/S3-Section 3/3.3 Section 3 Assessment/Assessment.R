########## Q1 ##########
n_question <- 44
choices <- 5
penalty_points <- -0.25
correct_points <- 1

p_correct <- 1/choices
p_wrong <- 1 - p_correct


##Q1a
p_correct

##Q1b
mu <- correct_points*p_correct + penalty_points*p_wrong

##Q1c: E[aX] = a.mu
E <- n_question * mu

##Q1d: SE[aX] = a.sigma
SE <- sqrt(n_question) * abs(penalty_points - correct_points) * sqrt(p_correct*p_wrong)

##Q1e
1 - pnorm(8, E, SE)

##Q1f
set.seed(21, sample.kind = "Rounding")
B <- 10000
S <- replicate(B, sum(sample(c(correct_points, penalty_points),
                         44, replace = TRUE,
                         prob = c(p_correct, p_wrong))))
mean(S>8)

########## Q2 ##########
choices <- 4
penalty_points <- 0
p_correct <- 1/choices
p_wrong <- 1 - p_correct

## Q2a
mu <- (correct_points*p_correct + penalty_points*p_wrong)
E <- n_question * mu

## Q2b
p_correct <- seq(0.25, 0.95, 0.05)
p_wrong <- 1 - p_correct

mu <- correct_points*p_correct + penalty_points*p_wrong
E <- n_question * mu
SE <- sqrt(n_question) * abs(penalty_points - correct_points) * sqrt(p_correct*p_wrong)
plot(p, 1 - pnorm(35, E, SE))


########## Q3 ##########
p_win <- 5/38
p_loss <- 1 - p_win
win <- 6
loss <- -1

## Q3a
mu <- p_win*win + p_loss*loss

## Q3b
sigma <- abs(loss - win) * sqrt(p_win*p_loss)

## Q3c
mu

## Q3d
sigma/sqrt(500)

## Q3e
E <- 500*mu

## Q3f
SE <- sqrt(500)*sigma

## Q3g
pnorm(0, E, SE)


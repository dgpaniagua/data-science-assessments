act_mean <- 20.9
act_sd <- 5.7

set.seed(16, sample.kind = "Rounding")

act_scores <- rnorm(10000, act_mean, act_sd)

####Q1a
mean(act_scores)

####Q1b
sd(act_scores)

####Q1c
sum(act_scores>=36)

####Q1d
mean(act_scores>=30)

####Q1e
1 - mean(act_scores>10)


#######Q2
x <- seq(1, 36)
f_x <- dnorm(x, act_mean, act_sd)
plot(x, f_x)


#######Q3
z_act_scores <- (act_scores-mean(act_scores))/sd(act_scores)

#####Q3a
mean(z_act_scores>=2)

#####Q3b
2*sd(act_scores)+mean(act_scores)

#####Q3c
qnorm(0.975, mean(act_scores), sd(act_scores))


#######Q4


#####Q4a
qnorm(0.95, mean(act_scores), sd(act_scores))
pnorm(31, mean(act_scores), sd(act_scores))

#####Q4b
qnorm(0.95, act_mean, act_sd)
pnorm(31, 20.9, 5.7)

#####Q4c
p <- seq(0.01, 0.99, 0.01)
sample_quantiles <- quantile(act_scores, p)
sample_quantiles

#####Q4c
p <- seq(0.01, 0.99, 0.01)
theoretical_quantiles <- qnorm(p, act_mean, act_sd)
plot(theoretical_quantiles, sample_quantiles)

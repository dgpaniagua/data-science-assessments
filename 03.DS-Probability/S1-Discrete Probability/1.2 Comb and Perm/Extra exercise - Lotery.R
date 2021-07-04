# Probability of winning the lotery playing with the same numbers 
# over ten years (must hit 6 numbers out of 46 to win)

###### Monte Carlo simulation

# possibles numbers
numbers <- seq(0, 45)

# My numbers 
my_numbers <- c(2, 6, 19, 22, 33, 40)

# 2 plays per week, 52 weeks per year
plays_per_year <- 2*52
years <- 10
total_plays <- plays_per_year*years

win_prob <- replicate(10000, {
  ten_years_play <- replicate(total_plays, {
    result <- sample(numbers, 6)
    all(my_numbers %in% result)
  })
  any(ten_years_play)
})
mean(win_prob)

###### Exact method
# 2 plays per week, 52 weeks per year
plays_per_year <- 2*52
years <- 10
total_plays <- plays_per_year*years

possibles_outcomes <- length(combinations(46, 6)[,1])
win_prob_10y <- total_plays / possibles_outcomes

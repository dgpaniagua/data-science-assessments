#A restaurant manager wants to advertise that his lunch special offers enough choices to eat different meals every day of the year. He doesn't think his current special actually allows that number of choices, but wants to change his special if needed to allow at least 365 choices.
#A meal at the restaurant includes 1 entree, 2 sides, and 1 drink. 
#He currently offers a choice of 1 entree from a list of 6 options, 
#a choice of 2 different sides from a list of 6 options, 
#and a choice of 1 drink from a list of 2 options.

#### Q2a

library(gtools)

entree <- combinations(6, 1)
sides <- combinations(6, 2)
drinks <- combinations(2, 1)

length(entree[,1])*length(sides[,1])*length(drinks[,1])

#### Q2b
entree <- combinations(6, 1)
sides <- combinations(6, 2)
drinks <- combinations(3, 1)

length(entree[,1])*length(sides[,1])*length(drinks[,1])

#### Q2c
entree <- combinations(6, 1)
sides <- combinations(6, 3)
drinks <- combinations(3, 1)

length(entree[,1])*length(sides[,1])*length(drinks[,1])

#### Q2d

meals_numberQ2d <- function(N){
  entree <- combinations(N, 1)
  sides <- combinations(6, 2)
  drinks <- combinations(3, 1)
  length(entree[,1])*length(sides[,1])*length(drinks[,1])
}
sapply(seq(1,12), meals_number)

#### Q2e
meals_number_Q2e <- function(N){
  entree <- combinations(6, 1)
  sides <- combinations(N, 2)
  drinks <- combinations(3, 1)
  length(entree[,1])*length(sides[,1])*length(drinks[,1])
}
sapply(seq(2,12), meals_number_Q2e)

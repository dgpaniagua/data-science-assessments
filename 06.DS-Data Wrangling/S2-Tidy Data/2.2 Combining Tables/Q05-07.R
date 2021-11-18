library(Lahman)
library(dplyr)
top <- Batting %>% 
  filter(yearID == 2016) %>%
  arrange(desc(HR)) %>%    # arrange by descending HR count
  slice(1:10)    # take entries 1-10
top %>% as_tibble()

Master %>% as_tibble()


#####Q5


#####Q6
Salaries %>% as_tibble() 


#####Q7
award_2016 <- AwardsPlayers %>% filter(yearID == 2016)
intersect(award_2016$playerID, top$playerID)
length(setdiff(award_2016$playerID, top$playerID))

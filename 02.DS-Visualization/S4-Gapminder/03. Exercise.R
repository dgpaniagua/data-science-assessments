##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##ANSWER

df <- gapminder %>% filter(continent=="Africa" & year==2012 & fertility <= 3 & life_expectancy >= 70) %>%
  select(country, region)
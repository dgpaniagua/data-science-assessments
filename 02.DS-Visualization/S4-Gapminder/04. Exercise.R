##STATEMENT:

library(dplyr)
library(dslabs)
data(gapminder)

##ANSWER

tab <- gapminder %>% filter(country %in% c("United States", "Vietnam") & year >= 1960 & year <= 2010)
##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##ANSWER
gapminder %>% filter(country == "Cambodia" & year >= 1960 & year <= 2010) %>%
  ggplot(aes(year, life_expectancy)) +
  geom_line()
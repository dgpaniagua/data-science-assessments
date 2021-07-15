##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##ANSWER

gapminder %>% filter( continent=="Africa" & year==2012 ) %>%
  ggplot(aes(fertility, life_expectancy, color=region)) +
  geom_point()
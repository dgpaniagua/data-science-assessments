##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)
## fill out the missing parts in filter and aes
# gapminder %>% filter( & ) %>%
#   ggplot(aes( , )) +
#   geom_point()

##ANSWER

gapminder %>% filter( continent=="Africa" & year==2012 ) %>%
  ggplot(aes(fertility, life_expectancy)) +
  geom_point()
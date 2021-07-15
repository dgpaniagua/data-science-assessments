##STATEMENT:

library(dplyr)
library(dslabs)
data(gapminder)
# daydollars <- # write your code here

##ANSWER

daydollars <- mutate(gapminder, dollars_per_day=gdp/population/365) %>%
  filter(continent=="Africa", year==2010, dollars_per_day!=is.na(dollars_per_day))
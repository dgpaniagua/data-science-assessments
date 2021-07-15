##STATEMENT:

# From exercise 7:
library(dplyr)
library(dslabs)
data(gapminder)
daydollars <- mutate(gapminder, dollars_per_day=gdp/population/365) %>%
  filter(continent=="Africa", year==2010, dollars_per_day!=is.na(dollars_per_day))

# your code here

##ANSWER

daydollars %>% ggplot(aes(dollars_per_day)) +
  geom_density() + 
  scale_x_continuous(trans="log2")
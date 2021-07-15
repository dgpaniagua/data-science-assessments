##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##ANSWER
daydollars <- mutate(gapminder, dollars_per_day=gdp/population/365) %>%
  filter(continent=="Africa", year %in% c(1970, 2010), dollars_per_day!=is.na(dollars_per_day))

daydollars %>% ggplot(aes(dollars_per_day)) +
  geom_density() + 
  scale_x_continuous(trans="log2") +
  facet_grid(year ~ .)
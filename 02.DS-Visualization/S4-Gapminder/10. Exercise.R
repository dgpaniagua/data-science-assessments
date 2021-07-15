##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##ANSWER
daydollars <- mutate(gapminder, dollars_per_day=gdp/population/365) %>%
  filter(continent=="Africa", year %in% c(1970, 2010), dollars_per_day!=is.na(dollars_per_day))

daydollars %>% ggplot(aes(dollars_per_day, fill=region)) +
  geom_density(bw=0.5, position="stack") + 
  scale_x_continuous(trans="log2") +
  facet_grid(year ~ .)
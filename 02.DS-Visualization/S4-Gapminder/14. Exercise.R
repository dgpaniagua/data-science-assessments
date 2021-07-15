##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

##ANSWER

gapminder_Africa_2010 <-  mutate(gapminder, dollars_per_day=gdp/population/365) %>%
  filter(continent=="Africa", year %in% c(1970, 2010), 
         dollars_per_day!=is.na(dollars_per_day), infant_mortality!=is.na(infant_mortality))

gapminder_Africa_2010 %>% ggplot(aes(dollars_per_day, infant_mortality, color=region, label=country)) +
  geom_point() +
  scale_x_continuous(trans = "log2") +
  geom_text() +
  facet_grid(year ~ .)
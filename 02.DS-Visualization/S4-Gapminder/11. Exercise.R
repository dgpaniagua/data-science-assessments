##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)
# gapminder_Africa_2010 <- # create the mutated dataset
  
  # now make the scatter plot

##ANSWER
gapminder_Africa_2010 <-  mutate(gapminder, dollars_per_day=gdp/population/365) %>%
  filter(continent=="Africa", year==2010, dollars_per_day!=is.na(dollars_per_day))

gapminder_Africa_2010 %>% ggplot(aes(dollars_per_day, infant_mortality, color=region)) +
  geom_point()
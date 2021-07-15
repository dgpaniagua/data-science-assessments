##STATEMENT:

# p <- # code for your plot goes here - the data table is stored as `tab`
# p

# Exercise 4 answer
tab <- gapminder %>% filter(country %in% c("United States", "Vietnam") & year >= 1960 & year <= 2010)

##ANSWER
p <- tab %>% ggplot(aes(year, life_expectancy, color=country)) +
  geom_line()
p
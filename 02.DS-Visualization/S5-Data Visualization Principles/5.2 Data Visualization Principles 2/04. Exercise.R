##STATEMENT:

library(dplyr)
library(ggplot2)
library(dslabs)
data("murders")
# murders %>% mutate(rate = total/population*100000)

##ANSWER

murders %>% mutate(rate = total/population*100000, region=reorder(region, rate, median)) %>% 
  ggplot(aes(region, rate)) + 
  geom_boxplot() + 
  geom_point()
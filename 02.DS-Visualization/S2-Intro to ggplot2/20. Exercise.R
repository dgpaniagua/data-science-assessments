##STATEMENT:

## add the group argument then a layer with +
heights %>% 
  ggplot(aes(height))

##ANSWER:

heights %>% 
  ggplot(aes(height, group = sex)) + geom_density()
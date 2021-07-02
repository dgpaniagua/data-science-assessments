##STATEMENT:

## edit the next line to use color instead of group then add a density layer
heights %>% 
  ggplot(aes(height, group = sex))

##ANSWER:

heights %>% 
  ggplot(aes(height, color = sex)) + geom_density()
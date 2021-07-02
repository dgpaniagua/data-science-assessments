##STATEMENT:

#Remake the plot but flip the axes so that total is on the x-axis and population is on the y-axis.

##ANSWER:

## Fill in the blanks
murders %>% ggplot(aes(total, population)) +
  geom_point()
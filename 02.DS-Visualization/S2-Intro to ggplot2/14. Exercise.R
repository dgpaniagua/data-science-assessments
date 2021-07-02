##STATEMENT:

#Edit the code above to add the title "Gun murder data" to the plot.

p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
# add a layer to add title to the next line
p + scale_x_log10() + 
  scale_y_log10()

##ANSWER:

p + scale_x_log10() + 
  scale_y_log10() +
  ggtitle("Gun murder data")

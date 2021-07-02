##STATEMENT:

#Change both axes to be in the log scale on a single graph. Make sure you do not redefine p - just add the appropriate layers.

p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) + geom_label()
## add layers to p here

##ANSWER:

p + scale_x_log10() + scale_y_log10()

##STATEMENT:

#We can also assign groups using the fill argument. When using the geom_density geometry, color creates a colored line for the smooth density plot while fill colors in the area under the curve.
#However, here the second density is drawn over the other. We can change this by using something called alpha blending.
#Set the alpha parameter to 0.2 in the geom_density function to make this change.

##ANSWER:

heights %>% 
  ggplot(aes(height, fill = sex)) + 
  geom_density(alpha = 0.2) 

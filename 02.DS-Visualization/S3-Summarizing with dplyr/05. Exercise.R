##STATEMENT:

library(dplyr)
library(NHANES)
data(NHANES)
##complete the line with group_by and summarize
# NHANES %>%
#   filter(Gender == "female") %>%
  

##ANSWER

NHANES %>%
  filter(Gender == "female") %>%
  group_by(AgeDecade) %>%
  summarize(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE))
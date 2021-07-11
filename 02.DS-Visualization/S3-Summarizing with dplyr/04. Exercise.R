##STATEMENT:

library(dplyr)
library(NHANES)
data(NHANES)
## complete the line
# NHANES %>%
#   filter(AgeDecade == " 20-29"  & Gender == "female") %>%
  

##ANSWER

NHANES %>%
  filter(AgeDecade == " 20-29"  & Gender == "female") %>% 
  summarize(minbp=min(BPSysAve, na.rm=TRUE), maxbp=max(BPSysAve, na.rm=TRUE))
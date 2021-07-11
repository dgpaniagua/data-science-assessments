##STATEMENT:

library(dplyr)
library(NHANES)
data(NHANES)
## complete this line of code.
#ref <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female") %>%

##ANSWER
ref <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female") %>% summarize(average=mean(BPSysAve, na.rm=TRUE), standard_deviation=sd(BPSysAve, na.rm=TRUE))
ref
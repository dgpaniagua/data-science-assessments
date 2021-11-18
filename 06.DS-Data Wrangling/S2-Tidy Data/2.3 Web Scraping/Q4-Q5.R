library(rvest)
library(tidyverse)
url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"


#Q4
h <- read_html(url)
tab <- html_nodes(h, "table")
html_table(tab[[1]], fill = TRUE)
html_table(tab[[2]], fill = TRUE)
html_table(tab[[3]], fill = TRUE)
html_table(tab[[4]], fill = TRUE)
html_table(tab[[5]], fill = TRUE)
html_table(tab[[6]], fill = TRUE)
html_table(tab[[7]], fill = TRUE)
html_table(tab[[8]], fill = TRUE)
html_table(tab[[9]], fill = TRUE)
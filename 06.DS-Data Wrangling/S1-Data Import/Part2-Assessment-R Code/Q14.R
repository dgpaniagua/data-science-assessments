###Q14
library(readr)

url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data"

dat <- read_csv(url, col_names = FALSE)

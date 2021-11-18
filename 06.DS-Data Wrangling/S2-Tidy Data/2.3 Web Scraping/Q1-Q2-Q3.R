library(rvest)
url <- "https://web.archive.org/web/20181024132313/http://www.stevetheump.com/Payrolls.htm"
h <- read_html(url)

nodes <- html_nodes(h, "table")
html_text(nodes[[8]])
html_table(nodes[[8]])

#Q1
html_table(nodes[[1]])
html_table(nodes[[2]])
html_table(nodes[[3]])
html_table(nodes[[4]])

#Q2
html_table(nodes[[19]])
html_table(nodes[[20]])
html_table(nodes[[21]])

#Q3
tab_1 <- html_table(nodes[[10]])
tab_2 <- html_table(nodes[[19]])

tab_1 <- tab_1[-1, -1] #Remove extra column (first) and first row
names(tab_1) <- c("Team", "Payroll", "Average") #rename columns

tab_2 <- tab_2[-1, ] #Remove first row
names(tab_2) <- c("Team", "Payroll", "Average") #rename columns

tab_join <- full_join(tab_1, tab_2, by = "Team")

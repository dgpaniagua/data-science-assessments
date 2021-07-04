set.seed(1)
B <- 10000

runners <- c("Jamaica", "Jamaica", "Jamaica", "USA", "Ecuador", "Netherlands", "France", "South Africa")

winners <- replicate(B, {
  medals <- sample(runners, 3)
  all(medals == "Jamaica")
})

mean(winners)
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19) 
data_law <- data.frame(Name, ABC, CBS)
data_law


# Make bar plot.
barplot(as.matrix(t(data_law[, -1])), beside = TRUE, names.arg = data_law$Name, legend.text = c("ABC", "CBS"), col = c("skyblue", "lightgreen"), xlab = "Name", ylab = "Won Polls", main = "Political Wins in ABC & CBS")
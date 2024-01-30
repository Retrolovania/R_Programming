library(ggplot2)

Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

blood <- data.frame(Frequency, BP, First, Second, FinalDecision)

ggplot(blood, aes(x = factor(First, labels = c("Good", "Bad")), y = BP, fill = factor(First))) +
  geom_boxplot() +
  labs(x = "1st Doctor's Rating", y = "Blood Pressure") +
  scale_fill_manual(values = c("mediumpurple", "lightblue"), name = "Rating", labels = c("Good", "Bad"))

ggplot(blood, aes(x = factor(Second, labels = c("Good", "Bad")), y = BP, fill = factor(Second))) +
  geom_boxplot() +
  labs(x = "2nd Doctor's Rating", y = "Blood Pressure") +
  scale_fill_manual(values = c("mediumpurple", "lightblue"), name = "Rating", labels = c("Good", "Bad"))

hist(blood$BP, main = "Patient Blood Pressure", xlab="Blood Pressure")


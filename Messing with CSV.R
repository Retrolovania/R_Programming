library(plyr)

#1. First, let's load the data we need into R
data <- read.table("C:/Users/User/Downloads/Assignment 6 Dataset.txt", header = TRUE, sep = ",")
#Next, let's check the mean grade seperated by student gender...
mean_grade_by_sex = ddply(data, "Sex", transform, Grade.Average=mean(Grade))
#...and display it in a table.
write.table(mean_grade_by_sex, "Student Average") 
#Looks like the formatting's off. Let's fix that.
write.table(mean_grade_by_sex, "Student Average", sep=",")

#2. Let's create a clone of our data frame specifically for names with I
data_i = subset(data, grepl("[iI]", data$Name))
#Aaaand now to make a new file for it!
write.table(data_i,"i-Student Average",sep=",")
#Now let's save it as a CSV
write.csv(data_i, "i-Student Average.csv", row.names = FALSE)
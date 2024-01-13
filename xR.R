assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }
myMean(assignment2)

# This code does work, as it correctly returns the mean of the vector 
# by adding up all the numbers within said vector and dividing the result 
# by the amount of numbers. However, calling the variable name in the function
# by the same name as the vector we care about in this situation is unneeded. 
# It would be best to use a variable name like x to represent an input value, like this:

myMean <- function(x) { return(sum(x)/length(x)) }
myMean(assignment2)

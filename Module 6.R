A=matrix(c(2,0,1,3), ncol=2)
B=matrix(c(5,2,4,-1), ncol=2)

#1. Let's try to add and subtract the A & B matricies.
sumMatrix <- A + B
sumMatrix
diffMatrix <- A - B
diffMatrix

#2. That went well. Now, let's experiment with diag() and make a size 4 matrix.
diagMatrix_1 <- diag(x = c(4,1,2,3), nrow = 4, ncol = 4)

#3. Let's do some more, and try adding values to a matrix.
new_values <- c(3, 3, 3, 3, 3)

#Make the base matrix.
diagMatrix_2 <- diag(new_values)

#Insert values into rows and columns.
diagMatrix_2[1, diagMatrix_2[1,] == 0] <- 1
diagMatrix_2[diagMatrix_2[,1] == 0, 1] <- 2

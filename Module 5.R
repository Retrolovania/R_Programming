A=matrix(1:100, nrow=10)
B=matrix(1:1000, nrow=10)

#Neither matrix can be used with solve() as-is in order to find the 
#inverse, so let's do some modifying to them.

#First, let's transpose the matrices:
t_A <- t(A)
t_B <- t(B)

#Now, we need to make vectors to multiply the matrices by.
# 10 for A, and 100 for B.
a <- replicate(10, as.integer(abs(rnorm(10)*10)))
b <- replicate(10, as.integer(abs(rnorm(100)*100)))

#Time to multiply.
mA <- t_A*a
mB <- t_B*b

#Now, let's convert the vectors to matrices.
a.2 <- matrix(a, nrow=10)
b.2 <- matrix(b, nrow=10)

#Multiplying the matrices together...
nA <- a.2%*%mA
nB <- b.2%*%mB

#Let's check if we can solve these now.
det(nA)
det(nB)

#I think we can now! Let's solve them.

sA <- solve(nA)
sB <- solve(nB)

det(sA)
det(sB)
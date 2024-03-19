# Test matrix
test_matrix <- matrix(
  c(1, 2, 3, 4, 5,
    6, 7, 8, 9, 10,
    11, 12, 13, 14, 15,
    16, 17, 18, 19, 20,
    21, 22, 23, 24, 25), 
  nrow = 5, 
  ncol = 5
)

#Original function
#tukey_multiple <- function(x) {
  #outliers <- array(TRUE,dim=dim(x))
  #for (j in 1:ncol(x))
  #{
    #outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  #}
  #outlier.vec <- vector(length=nrow(x))
  #for (i in 1:nrow(x))
  #{ outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }

#Corrected; The return label needs to be in its own line, and
#tukey.outlier does not exist, so the function can't properly run if it's included.
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j]
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
  return(outlier.vec) 
}

tukey_multiple(test_matrix)
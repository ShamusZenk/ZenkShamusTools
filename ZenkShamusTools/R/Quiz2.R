# Write an R function that, given a numeric matrix A and a numeric vector `x`, calculates $x^T A^{-1} x$ (*hint* remember `solve` computes the inverse of a matrix in R). Note that this only makes sense when A is a square matrix and the dimension of x is the same as the dimensions of the row and column dimensions of A.

# Follow GIEMO (garbage in, error messages out). Make sure your function gives an error when the dimensions are wrong or when either argument is not numeric. When either argument contains NA, NaN, Inf, -Inf, your function can give an error, give a warning, or produce one of these results (your choice).

# Extra credit if you can do it without inverting A*. Think of this in terms of solving linear equations, instead.

# We deduct points for using a loop or loops.*

# Not only write a function, but also show it working on the data obtained by the R command

# load(url("http://www.stat.umn.edu/geyer/3701/data/q2p1.rda"))

# (This loads two R objects: a matrix a and a vector x.)

#  You can build `A` matrices with the right properties with the following:


### Your solution here

A <- matrix(rnorm(16), nc=4, nr=4) # creates the matrices and vector
x <- c(1,2,3,4)

myfunction <- function(A,x)
{
  newA <- solve(A) # solve creates inverse
  transposeX <- t(x) # t() creates transpose
  newMatrix <- transposeX %*% newA # matrix multiplication

  return(newMatrix)

}

myfunction(A,x) # calls the function

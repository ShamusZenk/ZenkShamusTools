

# Write an R function that, given a numeric vector $x$ calculates its mean, population variance, and population standard deviation, that is, if $x_i$ are the components of $x$ and $n$ is the length of $x$, then the mean is

# $$\mu = 1/n \sum_{i=1}^n x_i$$

# and with $\mu$ given by the above the population variance is given by

# $$\sigma^2 = (1/n) \sum_{i=1}^n (x_i-\mu)^2$$

# and with $\sigma^2$ given by the above the population standard deviation is $\sigma$ (the square root of the variance).
# Do not use the R functions mean, var, or sd. You may use the R function sum or any other R function in the R core (what is available without using the R function library to attach a package).

# Your function should return a list with three components named mean, var, and sd, which are the three things you calculated.

# For this problem you do not have to worry about GIEMO (garbage in, error messages out). That is the next problem. If your function does what it is supposed to when the input is correct, that gets full credit.

# Not only write a function, but also show it working on the data obtained by the R command

x <- scan(url("http://www.stat.umn.edu/geyer/3701/data/q1p1.txt"))

function1 <- function(x){
  answers <- c(0,0,0) # creates vecotr for my answers
  n <- length(x) # finds length of vecotr
  total <- sum(x) # sums vector
  meanx = total/n # finds mean by dividing the sum by the n value
  answers[1] <- meanx

  newx = x-meanx # subtracts the mean from each value
  newx = newx^2 # squares each new value
  sumnewx = sum(newx) # sums the new values
  varx = sumnewx/n # divides by n to find the var
  answers[2] <- varx

  sdx = sqrt(varx) # takes square root of var to find sd
  answers[3] <- sdx

  # (mean, var, sd)
  return(answers)
}

function1(x)

# Rewrite your function for the preceding problem so it does GIEMO (garbage in, error messages out).It should give an error if its argument has length zero, has NA or NaN or Inf or -Inf components, or is not of type "numeric". Hint: in Section 8 of the first course notes Basics we used the function is.finite. Look it up and see if you want to use that. Show that your new function still works on the data described in the preceding problem.


function1 <- function(x){
  answers <- c(0,0,0)
  n <- length(x)
  total <- sum(x)
  meanx = total/n
  answers[1] <- meanx

  newx = x-meanx
  newx = newx^2
  sumnewx = sum(newx)
  varx = sumnewx/n
  answers[2] <- varx

  sdx = sqrt(varx)
  answers[3] <- sdx

  # (mean, var, sd)
  return(answers)
}

if(is.finite(x)==TRUE){  # Check if the vector is finite
  function1(x)
} else{
  return("Error") # Returns error if the vector is not finite
}

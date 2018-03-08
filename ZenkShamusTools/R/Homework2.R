load(url("http://www.stat.umn.edu/geyer/3701/data/q2p3.rda"))
ls()

standardize <- function(x) {
  apply(x, 2, function(a) a - mean(a)/sd(a))
}  # creates a function that standardizes the columns of the matrix, the 2 represents columns

standardize(a) #runs function

load(url("http://www.stat.umn.edu/geyer/3701/data/q2p3.rda"))
demMeans <- colMeans(a) # finds means of the different columns
sd1 <- sd(a[,1])
sd2 <- sd(a[,2])
sd3 <- sd(a[,3])
sd4 <- sd(a[,4]) # finds the standard deviation of each colum

# apply(a,2) I would need to find a funtion that reads each vector and will output a matrix using the column means and standard deviations I've found.


load(url("http://www.stat.umn.edu/geyer/3701/data/q2p6.rda"))
pat
apply(pat, c(1,3), median) # apply for the three two dimensioal margins
apply(pat, c(2,3), median)
apply(pat, c(1,2), median)

apply(pat, 1, median)
apply(pat, 2, median)
apply(pat, 3, median) # apply function for each one dimensional aspect

# Load the mtcars dataset
data(mtcars)
sd_mpg <- sd(mtcars$mpg)

cat("The standard deviation of city miles per gallon is:", sd_mpg, "\n")

# Find the variance of highway milles per gallon
var_highway_mpg <- var(mtcars$am)

cat("The variance of highway miles per gallon is:", var_highway_mpg, "\n")

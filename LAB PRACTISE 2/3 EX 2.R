data(mtcars)
dimension <- dim(mtcars)
print(paste("Dimension of the dataset:", paste(dimension, collapse = " x ")))
summary(mtcars)
max_hp <- max(mtcars$hp)
min_hp <- min(mtcars$hp)

print(paste("Largest value of hp:", max_hp))
print(paste("Smallest value of hp:", min_hp))
mean_mpg <- tapply(mtcars$mpg, mtcars$am, mean)

print("Mean of mileage per gallon (mpg) with respect to transmission model:")
print(mean_mpg)
median_hp <- tapply(mtcars$hp, mtcars$cyl, median)

print("Median of horsepower (hp) with respect to cylinder displacement:")
print(median_hp)

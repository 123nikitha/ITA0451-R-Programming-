# create a vector of values
values <- c(12,7,3,4.2,18,2,54,-21,8,-5)

# compute the average
mean(values)
# create a vector of values
values <- c(12,7,3,4.2,18,2,54,-21,8,-5)

# compute the trimmed mean
mean(values, trim = 0.3)
# create a vector of values, including NA
values <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)

# compute the average
mean(values, na.rm = TRUE)


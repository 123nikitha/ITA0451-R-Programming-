# Load the mtcars dataset
data(mtcars)
range_disp <- range(mtcars$disp)

cat("The range of the disp column in the mtcars dataset is:", range_disp, "\n")

# Find the Quartile of the disp in the data set mpg
quantiles_disp <- quantile(mtcars$disp, probs = c(0.25, 0.5, 0.75))

cat("The quartiles of the disp column in the mtcars dataset are:", quantiles_disp, "\n")

# Find the IQR of the disp column in the data set mpg
iqr_disp <- IQR(mtcars$disp)

cat("The interquartile range of the disp column in the mtcars dataset is:", iqr_disp, "\n")
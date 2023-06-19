# Load the MASS package
library(MASS)

# Load the UScereal dataset
data(UScereal)

# (i) Extract calories
calories <- UScereal$calories

plot(UScereal$sodium, UScereal$sugars, xlab = "Sodium", ylab = "Sugars")

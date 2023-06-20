# Check for missing values in features
missing_values <- sum(is.na(airquality)) / prod(dim(airquality))

# Drop missing values if less than 10% of the data
if (missing_values < 0.1) {
  airquality <- na.omit(airquality)
} else {
  # Replace missing values with mean
  airquality[is.na(airquality)] <- mean(airquality, na.rm = TRUE)
}
# Fit the linear regression model
model <- lm(Ozone ~ Solar.R, data = airquality)

# Summary of the linear regression model
summary(model)
# Plot scatter plot
plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Scatter Plot: Ozone vs Solar.R")

# Add regression line
abline(model, col = "red")

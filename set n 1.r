# Load the mtcars dataset
data(mtcars)

# Create a multiple regression model
model <- lm(mpg ~ disp + hp + wt, data = mtcars)

# Print the summary of the model
summary(model)

# Predict the mileage of a car with dsp = 221, hp = 102, and wt = 2.91
new_data <- data.frame(disp = 221, hp = 102, wt = 2.91)
predicted_mpg <- predict(model, newdata = new_data)

# Print the predicted mileage
cat("Predicted mileage (mpg):", predicted_mpg)

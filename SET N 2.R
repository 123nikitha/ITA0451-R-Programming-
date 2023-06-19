# Load the delivery dataset
data(delivery)

# Fit the linear regression model
model <- lm(delTime ~ n.prod + distance, data = delivery)

# Display the model summary
summary(model)

# Predict delTime for n.prod = 9 and distance = 450
new_data <- data.frame(n.prod = 9, distance = 450)
predicted_delTime <- predict(model, newdata = new_data)
predicted_delTime

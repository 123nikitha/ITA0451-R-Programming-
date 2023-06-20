# Load the mtcars dataset
data(mtcars)

# Create a logistic regression model
model <- glm(am ~ hp + wt + cyl, data = mtcars, family = binomial)

# Print the summary of the model
summary(model)

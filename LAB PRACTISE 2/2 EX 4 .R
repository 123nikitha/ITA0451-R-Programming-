# Load the iris dataset
data(iris)

# Set the seed for reproducibility
set.seed(123)

# (i) Randomly sample the iris dataset such as 50% data for training and 50% for test
train_indices <- sample(1:nrow(iris), nrow(iris) * 0.5)
train_data <- iris[train_indices, ]
train_data
test_data <- iris[-train_indices, ]
test_data

# (ii) Find summary statistics of the train and test datasets
train_summary <- summary(train_data)
train_summary
test_summary <- summary(test_data)
test_summary

# (iii) Create Logistic regression with train data
model <- glm(Species ~ ., data = train_data, family = "binomial")
model

# (iv) Predict the probability of the model using test data
test_predictions <- predict(model, newdata = test_data, type = "response")
test_predictions

# (v) Create Confusion matrix for the test model
library(caret)
confusion_matrix <- confusionMatrix(data = test_predictions, reference = test_data$Species)
confusion_matrix
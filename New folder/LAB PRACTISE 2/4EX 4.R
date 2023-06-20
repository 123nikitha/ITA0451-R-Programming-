set.seed(123)  # Set a seed for reproducibility
train_indices <- sample(1:nrow(mtcars), 0.8 * nrow(mtcars))  # 80% for training
train_data <- mtcars[train_indices, ]
test_data <- mtcars[-train_indices, ]
log_model <- glm(vs ~ mpg + hp, data = train_data, family = binomial)
summary(log_model)
predicted <- predict(log_model, newdata = test_data, type = "response")
predicted_class <- ifelse(predicted >= 0.5, 1, 0)  # Convert probabilities to class labels

confusion_matrix <- table(predicted_class, test_data$vs)
print(confusion_matrix)

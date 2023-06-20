reg_model <- lm(weight ~ Time + Diet, data = ChickWeight)
summary(reg_model)
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(reg_model, newdata = new_data)
print(predicted_weight)
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
mae <- mean(abs(actual_weight - predicted_weight))
print(mae)

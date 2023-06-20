data(mtcars)
model <- lm(mpg ~ disp + hp + wt, data = mtcars)
summary(model)
library(ggplot2)

ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, color = "red", se = FALSE) +
  labs(x = "Displacement (disp)", y = "Mileage per Gallon (mpg)") +
  theme_minimal()
new_data <- data.frame(disp = 221, hp = 102, wt = 2.91)
prediction <- predict(model, newdata = new_data)

print(paste("Predicted mileage for the given car:", prediction))

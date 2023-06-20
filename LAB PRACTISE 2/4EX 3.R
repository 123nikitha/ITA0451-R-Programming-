library(ggplot2)
ggplot(mtcars, aes(x = disp, y = wt, color = factor(vs))) +
  geom_point() +
  labs(x = "Displacement (disp)", y = "Weight (wt)", color = "Engine Shape (vs)") +
  theme_minimal()
ggplot(mtcars, aes(x = mpg, y = hp, color = factor(vs))) +
  geom_point() +
  labs(x = "Mileage per Gallon (mpg)", y = "Horsepower (hp)", color = "Engine Shape (vs)") +
  theme_minimal()
ggplot(mtcars, aes(x = mpg, y = hp, color = factor(vs))) +
  geom_point() +
  labs(x = "Mileage per Gallon (mpg)", y = "Horsepower (hp)", color = "Engine Shape (vs)") +
  facet_wrap(~ factor(cyl)) +
  theme_minimal()

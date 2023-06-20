data(ChickWeight)
summary(ChickWeight)
library(ggplot2)

ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(x = "Diet", y = "Weight") +
  theme_minimal()
ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "steelblue", color = "white") +
  labs(x = "Weight", y = "Frequency") +
  theme_minimal()
ggplot(subset(ChickWeight, Diet == 4), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "steelblue", color = "white") +
  labs(x = "Weight", y = "Frequency") +
  theme_minimal()
ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(x = "Time", y = "Weight", color = "Diet") +
  theme_minimal()

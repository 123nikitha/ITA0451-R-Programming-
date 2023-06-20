data(mtcars)
library(ggplot2)

ggplot(mtcars, aes(x = hp, y = mpg, color = factor(am))) +
  geom_point() +
  labs(x = "Horsepower (hp)", y = "Mileage per Gallon (mpg)") +
  scale_color_discrete(name = "Transmission\nModel") +
  theme_minimal()
ggplot(mtcars, aes(x = factor(am), y = mpg, fill = factor(am))) +
  geom_boxplot() +
  labs(x = "Transmission Model", y = "Mileage per Gallon (mpg)") +
  scale_fill_discrete(name = "Transmission\nModel") +
  theme_minimal()
ggplot(mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 20, fill = "steelblue", color = "white") +
  labs(x = "Horsepower (hp)", y = "Count") +
  theme_minimal()
library(dplyr)

mtcars %>%
  group_by(cyl, gear) %>%
  summarise(count = n()) %>%
  ggplot(aes(x = factor(cyl), y = count, fill = factor(gear))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(x = "Cylinder", y = "Count", fill = "Number of Gears") +
  theme_minimal()
gear_counts <- table(mtcars$gear)
labels <- paste(names(gear_counts), "\n", paste(round(prop.table(gear_counts) * 100, 1), "%"), sep = "")

pie(gear_counts, labels = labels, col = rainbow(length(gear_counts)))

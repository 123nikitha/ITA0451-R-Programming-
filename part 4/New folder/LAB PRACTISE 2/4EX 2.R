dimension <- dim(mtcars)
print(paste("Dimension of the dataset:", paste(dimension, collapse = " x ")))
summary(mtcars)
library(dplyr)

categorical_features <- mtcars %>%
  select_if(is.factor) %>%
  names()

print(categorical_features)
average_weight <- mtcars %>%
  group_by(vs) %>%
  summarise(avg_weight = mean(wt))

print(average_weight)
largest_smallest_weight <- mtcars %>%
  group_by(vs) %>%
  summarise(largest_weight = max(wt), smallest_weight = min(wt))

print(largest_smallest_weight)

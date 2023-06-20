# Load ChickWeight dataset
data("ChickWeight")

# (i) Get the Statistical Summary of ChickWeight dataset
summary(ChickWeight)

# (ii) Create Box plot for weight grouped by Diet
library(ggplot2)
ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) + 
  geom_boxplot() + 
  labs(x = "Diet", y = "Weight") + 
  ggtitle("Box plot of Weight grouped by Diet")

# (iii) Create a Histogram for Weight features belong to Diet-1 category
hist(ChickWeight$weight[ChickWeight$Diet == 1], 
     main = "Histogram of Weight for Diet-1", 
     xlab = "Weight")

# (iv) Create a Histogram for Weight features belong to Diet-4 category
hist(ChickWeight$weight[ChickWeight$Diet == 4], 
     main = "Histogram of Weight for Diet-4", 
     xlab = "Weight")

# (v) Create Scatter plot for weight vs Time grouped by Diet
ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) + 
  geom_point() + 
  labs(x = "Time", y = "Weight", color = "Diet") + 
  ggtitle("Scatter plot of Weight vs Time grouped by Diet")

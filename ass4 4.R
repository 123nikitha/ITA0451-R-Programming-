library(ggplot2)

# Count the number of employees in each position by gender
employee_counts <- aggregate(employees$gender, by = list(employees$position), length)
colnames(employee_counts) <- c("position", "count")
employee_counts$position <- factor(employee_counts$position, levels = unique(employee_counts$position))

# Create a bar chart with custom colors and theme
ggplot(employee_counts, aes(x = position, y = count, fill = gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("lightblue", "pink")) +
  labs(title = "Job positions by gender", x = "Job position", y = "Employee count") +
  theme_minimal()

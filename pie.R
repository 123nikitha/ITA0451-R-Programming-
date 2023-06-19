# Define the input vector and labels
values <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Create the pie-chart with labels and title
pie(values, labels = labels, main = "City Pie-Chart")

# Add a legend at the top right corner
legend("topright", inset = 0.05, legend = labels, fill = rainbow(length(values)), 
       cex = 0.8, title = "Cities")

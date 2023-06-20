# Define the input vector
input_vector <- c(21, 62, 10, 53)

# Define the labels for the chart
labels <- c("London", "New York", "Singapore", "Mumbai")

# Create the pie chart with labels and a title
pie(input_vector, labels = labels, main = "City Pie-Chart")

# Add a legend to the chart
legend("topright", legend = labels, fill = rainbow(length(labels)))

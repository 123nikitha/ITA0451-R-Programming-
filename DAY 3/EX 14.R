# Load the required package
library(plotrix)

# Create a sample data frame with labels and colors
knowledge <- data.frame(Knowledge = c("Low", "Medium", "High"), 
                        Values = c(12, 25, 38),
                        Colors = c("red", "blue", "green"))

# Create the 3D pie chart
pie3D(knowledge$Values, labels = knowledge$Knowledge, 
      col = knowledge$Colors, explode = 0.1, 
      main = "Political Knowledge", 
      sub = "3D Pie Chart", depth = 5)

# Add a legend to the chart
legend("topright", legend = knowledge$Knowledge, 
       fill = knowledge$Colors, bty = "n")

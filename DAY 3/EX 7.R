# Load the mpg dataset from ggplot2 library
library(ggplot2)
data(mpg)

# Find the skewness of city miles per gallon
skewness(mpg$cty)

# Use qplot function to display the graph for the city miles per gallon column
qplot(data = mpg, x = cty)

# Find the kurtosis of city miles per gallon
kurtosis(mpg$cty)

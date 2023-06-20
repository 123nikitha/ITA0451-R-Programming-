# Load the AirPassengers dataset
data("AirPassengers")

# Create a histogram
hist(AirPassengers, breaks = seq(100, 700, by = 200), 
     xlim = c(100, 700), ylim = c(0, 35), xlab = "Passenger Count",
     ylab = "Frequency", main = "Histogram of AirPassengers Dataset")

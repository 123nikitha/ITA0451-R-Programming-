# Define the data
H <- c(7, 12, 28, 3, 41)
M <- c("mar", "apr", "may", "jun", "jul")

# Create a bar chart
barplot(H, names.arg = M, xlab = "Month", ylab = "Revenue",
        main = "Revenue chart", col = "blue")

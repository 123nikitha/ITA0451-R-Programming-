# Load airquality dataset
data(airquality)

# Compute the mean temperature
mean_temp <- mean(airquality$Temp, na.rm = TRUE)
print(paste("Mean temperature:", mean_temp))

# Extract the first five rows
first_five_rows <- airquality[1:5, ]
print(first_five_rows)

# Extract all columns except Temp and Wind
all_cols_except_temp_wind <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(all_cols_except_temp_wind)

# Find the coldest day
coldest_day <- airquality$Day[which.min(airquality$Temp)]
print(paste("Coldest day:", coldest_day))

# Count the number of days with wind speed greater than 17 mph
wind_gt_17 <- sum(airquality$Wind > 17, na.rm = TRUE)
print(paste("Number of days with wind speed > 17 mph:", wind_gt_17))

# Count the number of days with temperature below 70 and wind speed above 10
temp_below_70_wind_above_10 <- sum(airquality$Temp < 70 & airquality$Wind > 10, na.rm = TRUE)
print(paste("Number of days with temp < 70 and wind speed > 10 mph:", temp_below_70_wind_above_10))

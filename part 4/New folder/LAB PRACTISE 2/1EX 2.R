# Load the airquality dataset
data(airquality)

# i. Compute the mean temperature
mean_temperature <- sum(airquality$Temp) / length(airquality$Temp)
mean_temperature
# ii. Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]
first_five_rows
# iii. Extract all columns from airquality except Temp and Wind
selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
selected_columns
# iv. Identify the coldest day during the period
coldest_day <- airquality$Day[which.min(airquality$Temp)]
coldest_day
# v. Count the number of days with wind speed greater than 17 mph
wind_gt_17_count <- sum(airquality$Wind > 17)
wind_gt_17_count
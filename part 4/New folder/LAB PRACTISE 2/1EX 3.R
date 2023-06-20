summary(airquality)
library(reshape2)
melted_data <- melt(airquality)
melted_data
melted_data <- melt(airquality, id.vars = c("Month", "Day"))
melted_data
casted_data <- dcast(melted_data, Month + Day ~ variable)
casted_data
average_data <- aggregate(. ~ Month, airquality, mean)
average_data

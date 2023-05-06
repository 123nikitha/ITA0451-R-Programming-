library(reshape2)

melted_airquality <- melt(airquality)
melted_airquality
melted_airquality2 <- melt(airquality, id.vars = c("Month", "Day"))
melted_airquality2
casted_airquality <- dcast(melted_airquality, "Month" + "Day" ~ variable)
casted_airquality
casted_airquality2 <- cast(melted_airquality2, "Month" ~ variable, mean)
casted_airquality2 
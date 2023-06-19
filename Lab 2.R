data(mtcars)
model <- lm(mpg ~ hp + wt + cyl + am, data = mtcars)
summary(model)
library(reshape2)
data(airquality)
melted_data <- melt(airquality)
melted_data <- melt(airquality, id.vars = c("Month", "Day"))
casted_data <- dcast(melted_data, Month ~ variable, mean)


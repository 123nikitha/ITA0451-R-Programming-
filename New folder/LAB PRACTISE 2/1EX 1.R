kelvin_to_celsius <- function(temperature_kelvin) {
  temperature_celsius <- temperature_kelvin - 273.15
  return(temperature_celsius)
}
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_value <- mean(values)
mean_value
median_value <- median(values)
median_value
mode_value <- as.numeric(names(table(values))[table(values) == max(table(values))])
mode_value
sorted_values <- sort(values)
sorted_values
second_highest <- sorted_values[length(sorted_values) - 1]
second_highest
third_lowest <- sorted_values[3]
third_lowest

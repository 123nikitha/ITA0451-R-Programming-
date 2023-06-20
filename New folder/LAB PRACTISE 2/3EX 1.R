commute_times <- c(17, 16, 20, 24, 22, 15, 21, 15, 17, 22)
maxi <- function(commute_times) {
  max(commute_times)
}

avger <- function(commute_times) {
  mean(commute_times)
}

mini <- function(commute_times) {
  min(commute_times)
}
longest_time <- maxi(commute_times)
average_time <- avger(commute_times)
minimum_time <- mini(commute_times)

print(paste("Longest commute time:", longest_time))
print(paste("Average commute time:", average_time))
print(paste("Minimum commute time:", minimum_time))
commute_times[which(commute_times == 24)] <- 18
new_average_time <- avger(commute_times)

print(paste("New average commute time:", new_average_time))

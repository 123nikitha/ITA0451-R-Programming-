# function to calculate mode
get_mode <- function(x) {
  uniqx <- unique(x)
  uniqx[which.max(tabulate(match(x, uniqx)))]
}
# numeric dataset
nums <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
get_mode(nums)
# character dataset
chars <- c("o","it","the","it","it")
get_mode(chars)

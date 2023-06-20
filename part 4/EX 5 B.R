find_range <- function(vec) {
  max_val <- max(vec)
  min_val <- min(vec)
  range_val <- max_val - min_val
  return(range_val)
}

# Example usage
C <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)
output <- find_range(C)
print(output)

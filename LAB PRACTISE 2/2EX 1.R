factorial <- function(n) {
  result <- 1
  for (i in 1:n) {
    result <- result * i
  }
  return(result)
}
# Set the seed for reproducibility
set.seed(123)

# Create the matrix
matrix_data <- matrix(sample(1:100, 12), nrow = 3, ncol = 4, byrow = TRUE)
matrix_data
# Name the columns
colnames(matrix_data) <- c("uno", "dos", "tres", "cuatro")
colnames(matrix_data)
# Name the rows
rownames(matrix_data) <- c("x", "y", "z")
rownames(matrix_data)
# Scale the matrix by 10
scaled_matrix <- matrix_data * 10
scaled_matrix
column_uno <- matrix_data[, "uno"]
column_uno
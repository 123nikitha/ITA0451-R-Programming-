fibonacci <- function(n) {
  if (n <= 1) {
    return(n)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

# Example usage:
n <- 10
fib_sequence <- sapply(0:n, fibonacci)
print(fib_sequence)
n <- 10
sum <- 0

for (i in 1:n) {
  sum <- sum + i
}

print(paste("Sum of natural numbers up to", n, ":", sum))
numbers <- 1:10
squared <- lapply(numbers, function(x) x^2)

print(squared)

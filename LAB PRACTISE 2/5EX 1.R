set.seed(123)  # Set a seed for reproducibility
random_sample <- sample(LETTERS, 20)  # Randomly sample 20 letters from the LETTERS vector

factor_levels <- factor(random_sample)
extracted_levels <- levels(factor_levels)[1:5]

print(extracted_levels)
find_range <- function(vec) {
  range_value <- max(vec) - min(vec)
  return(range_value)
}

# Example usage:
C <- c(9, 8, 7, 6, 5, 4, 3, 2, 1)
range_result <- find_range(C)
print(range_result)
count_vowels <- function(str) {
  vowels <- c("a", "e", "i", "o", "u")
  count <- sum(tolower(str) %in% vowels)
  return(count)
}

# Example usage:
c <- "matrix"
vowel_count <- count_vowels(c)
print(vowel_count)

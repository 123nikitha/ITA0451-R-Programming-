# Create a random sample from LETTERS
set.seed(123)
sample_letters <- sample(LETTERS, size = 10)

# Extract five levels from the sample
five_levels <- sample(sample_letters, 5)

# Print the five levels
print(five_levels)




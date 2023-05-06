# Create the original data frame N
N <- data.frame(
  Sex = c("M", "F", "F", "M", "F"),
  Code = c(1, 2, 1, 3, 2),
  Id = c(1, 2, 3, 4, 5),
  Age = c(14, 12, 15, 10, 18),
  score = c(99, 94, 98, 100, 85)
)

# Remove the Sex and Code variables
N <- subset(N, select = -c(Sex, Code))

# Create a new data frame with the desired structure
values <- c(N$Id, N$Age, N$score)
ind <- rep(c("Id", "Age", "score"), times = c(nrow(N), nrow(N), nrow(N)))
new_df <- data.frame(values, ind)
new_df

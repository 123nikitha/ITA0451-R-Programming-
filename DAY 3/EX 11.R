# Load the tigerstats package
library(tigerstats)

# Load the dataframe1 dataset
dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("New", "New", "New", "New", "New", "Follow-up", "New", "New", "New", "New")
)

# Create a cross-tabulation of Status and Test using xtabs()
xtabs1 <- xtabs(~ Status + TestNewOrFollowUp, data = dataframe1)

# Display row percentages using rowPerc()
rowPerc(xtabs1)

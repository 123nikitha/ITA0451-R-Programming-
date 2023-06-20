# Load the dataframe1 dataset
dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("New", "New", "New", "New", "New", "Follow-up", "New", "New", "New", "New")
)

# Create a multi-dimensional table using xtabs()
dataframe3 <- xtabs(~ Status + Gender + TestNewOrFollowUp, data = dataframe1)
print(dataframe3)

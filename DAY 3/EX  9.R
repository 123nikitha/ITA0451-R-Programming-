# Load the dataframe1 dataset
dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("New", "New", "New", "New", "New", "Follow-up", "New", "New", "New", "New")
)

# Perform a frequency table of Reference and Status using xtabs()
dataframe2 <- xtabs(~ Reference + Status, data = dataframe1)
print(dataframe2)

# Display the relationship between Reference and Status as a percentage
prop.table(dataframe2, margin = 1) * 100

# Load the dataset into a data frame called dataframe1
dataframe1 <- data.frame(
  Reference = c("KRXH", "KRPT", "FHRA", "CZKK", "CQTN", "PZXW", "SZRZ", "RMZE", "STNX", "TMDW"),
  Status = c("Accepted", "Accepted", "Rejected", "Accepted", "Rejected", "Accepted", "Rejected", "Rejected", "Accepted", "Accepted"),
  Gender = c("Female", "Male", "Male", "Female", "Female", "Female", "Male", "Female", "Female", "Female"),
  TestNewOrFollowUp = c("New", "New", "New", "New", "New", "Follow-up", "New", "New", "New", "New")
)

# Load the function for crosstab
library(gmodels)

# Perform crosstab for Status+Gender
status_gender_crosstab <- CrossTable(dataframe1$Status, dataframe1$Gender, prop.chisq = FALSE)
print(status_gender_crosstab)

# Perform crosstab for Reference+Status
reference_status_crosstab <- CrossTable(dataframe1$Reference, dataframe1$Status, prop.chisq = FALSE)
print(reference_status_crosstab)

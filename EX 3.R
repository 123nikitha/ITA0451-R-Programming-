# create df1
df1 <- data.frame(Id = 1:4, Age = c(14, 12, 15, 10))

# create df2
df2 <- data.frame(Id = 1:4, Sex = c("F", "M", "M", "F"), Code = c("a", "b", "c", "d"))

# merge df1 and df2
M <- merge(df1, df2, by = "Id")

# display M
M

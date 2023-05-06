# create df1
df1 <- data.frame(Id = c(1, 2, 3, 4), Age = c(14, 12, 15, 10))

# create df2
df2 <- data.frame(Id = c(1, 2, 3, 4), Sex = c("F", "M", "M", "F"), Code = c("a", "b", "c", "d"))

# create df3
df3 <- data.frame(id2 = c(4, 3, 2, 1), score = c(100, 98, 94, 99))

# merge df1 and df2 into M
M <- merge(df1, df2, by = "Id")

# merge M and df3 into N
N <- merge(M, df3, by.x = "Id", by.y = "id2")
N

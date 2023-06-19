# R program to illustrate
# tapply() function
  
# Creating a factor
Id = c(1, 1, 1, 1, 2, 2, 2, 3, 3)
  
# Creating a vector
val = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
  
# applying tapply()
result = tapply(val, Id, sum)
print(result)
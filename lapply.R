# R program to illustrate
# lapply() function

# Creating a matrix
A = matrix(1:9, 3, 3)

# Creating another matrix
B = matrix(10:18, 3, 3)

# Creating a list
myList = list(A, B)

# applying lapply()
determinant = lapply(myList, det)
print(determinant)
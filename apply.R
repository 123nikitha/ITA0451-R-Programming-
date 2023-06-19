# R program to illustrate
# apply() function

# Creating a matrix
A = matrix(1:9, 3, 3)
print(A)

# Applying apply() over row of matrix
# Here margin 1 is for row
r = apply(A, 1, sum)
print(r)

# Applying apply() over column of matrix
# Here margin 2 is for column
c = apply(A, 2, sum)
print(c)
# Load the iris dataset
data(iris)

# (i) Plot Scatter plot between sepals width and length grouped by Species
plot1 <- plot(iris$Sepal.Width, iris$Sepal.Length, col = iris$Species, pch = 16,
              xlab = "Sepal Width", ylab = "Sepal Length",
              main = "Scatter Plot: Sepal Width vs Sepal Length by Species")

# (ii) Plot Scatter plot between petals width and length grouped by Species
plot2 <- plot(iris$Petal.Width, iris$Petal.Length, col = iris$Species, pch = 16,
              xlab = "Petal Width", ylab = "Petal Length",
              main = "Scatter Plot: Petal Width vs Petal Length by Species")

# (iii) Draw the Box plot for Sepals length grouped by Species
boxplot1 <- boxplot(Sepal.Length ~ Species, data = iris, xlab = "Species", ylab = "Sepal Length",
                    main = "Box Plot: Sepal Length by Species")

# (iv) Draw the Box plot for petals length grouped by Species
boxplot2 <- boxplot(Petal.Length ~ Species, data = iris, xlab = "Species", ylab = "Petal Length",
                    main = "Box Plot: Petal Length by Species")

# (v) Find the correlation among the four features
correlation <- cor(iris[, 1:4])

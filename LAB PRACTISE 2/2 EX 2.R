# Load the iris dataset
data(iris)

# (i) Find dimension, structure, summary statistics, and standard deviation of all features
dimension <- dim(iris)
data_structure <- str(iris)
summary_stats <- summary(iris)
standard_deviation <- apply(iris[, 1:4], 2, sd)
standard_deviation

# (ii) Find mean and standard deviation of features grouped by three species of Iris flowers
mean_by_species <- aggregate(. ~ Species, data = iris, FUN = mean)
mean_by_species
sd_by_species <- aggregate(. ~ Species, data = iris, FUN = sd)

# (iii) Find quantile value of sepal width and length
quantile_sepal_width <- quantile(iris$Sepal.Width)
quantile_sepal_width
quantile_sepal_length <- quantile(iris$Sepal.Length)
quantile_sepal_length

# (iv) Create a new data frame named iris1 with a new column named Sepal.Length.Cate that categorizes "Sepal.Length" by quantile
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, quantile(iris1$Sepal.Length), labels = c("Q1", "Q2", "Q3", "Q4"))
iris1$Sepal.Length.Cate
# (v) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
average_by_species_cate <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)
average_by_species_cate
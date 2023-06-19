set.seed(123)
m1<-matrix(rnorm(12),nrow=3,ncol=4)
m2<-matrix(rnorm(12),nrow=3,ncol=4)
print(m1)
print(m2)
m<-m1*m2
print(m)
m_inner<-m1 %*% t(m2)
print(m_inner)
weight <- c(71, 67, 83, 67)
height <- c(1.75, 1.81, 1.78, 1.82, 1.97, 2.12, 1.75)
bmi <- weight / height^2
hist(bmi, breaks = 10, main = "BMI Distribution", xlab = "BMI", col = "blue", 
     xlim = c(10, 40), ylim = c(0, 3), weights = rep(1/length(bmi), length(bmi)))
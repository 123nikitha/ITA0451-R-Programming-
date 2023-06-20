value<-c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)  
mean<-mean(value)
mean
median<-median(value)
median
mode<-names(table(value))[table(value)==max(table(value))]
mode
n<-as.integer(readline(prompt="Enter a value of temperature:"))
celsius<-(n-273.15)
celsius
second_highest<-sort(unique(value),decreasing=TRUE)[2]
second_highest
third_lowest<-sort(unique(value))[3]
third_lowest
#first part
maat<- matrix(runif(10), nrow = 3,ncol=4, byrow = TRUE, 
dimnames = list(c("x", "y", "z"),c("uno", "dos", "tres", "cuatro")))
mm<- maat*10
maat
#scaling10
mm
#extracting
smaat <- maat[1:2, ]
smaat
subtracting submatrix
maat-smaat

#uno
uno <- maat[, "uno"]
uno
#sub uno
maat - uno


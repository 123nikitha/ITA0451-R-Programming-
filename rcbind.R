mat<-matrix(c(1:8,99), nrow=3, ncol=3, byrow=F)  # fills by column
mat
#rbind
rbind(1:3,
      5:7,
      c(8,12,9))
#cbind
cmat <- cbind(1:3,
              5:7,
              c(8,12,9))
cmat
#dimesnion of a matrix
dim(mat)
ncol(mat)
nrow(mat)


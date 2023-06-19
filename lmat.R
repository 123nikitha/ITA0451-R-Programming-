#nullmatrix
nullmat<-matrix(,nrow=2,ncol=3)
nullmat
matt<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
#squarematrix
matt
#lowermatrix
lmat<- matt                             
lmat[lower.tri(lmat)]<- 0        
lmat 
#uppertriangle
umat<-matt
umat[upper.tri(umat)]<-0
umat
#diagonalmatrix                           
dia<-diag(10,3,3)
dia
#symmetricmatrix
sym<-matt                                        
sym[upper.tri(sym)] <- t(sym)[upper.tri(sym)] 
sym 

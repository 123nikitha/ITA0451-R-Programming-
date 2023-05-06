names <- c("nikitha", "abhi","pawan",
		"hitler","deva")
print( "original data:")
names
# apply lapply() function
print("data after lapply():")
lapply(names, toupper)

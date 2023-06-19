# Define the guessed numbers and the lottery numbers
guessed_numbers <- c(2, 7, 9, 13, 22, 29)
lottery_numbers <- sample(1:30, 6)

# Check if the guessed numbers match the lottery numbers
if(all(guessed_numbers %in% lottery_numbers)) {
  print("Mom wins the lottery!")
} else {
  print("Mom did not win the lottery.")
}
# Define the number to be checked
num <- 153

# Initialize variables
sum <- 0
temp <- num

# Calculate the sum of cubes of its digits
while(temp > 0) {
  digit <- temp %% 10
  sum <- sum + digit^3
  temp <- temp %/% 10
}

# Check if it's an Armstrong number
if(num == sum) {
  print(paste(num, "is an Armstrong number."))
} else {
  print(paste(num, "is not an Armstrong number."))
}
kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

# Example usage
kelvin_to_celsius(300) 
# Define the class
setClass("bank_account", 
         slots = c(name = "character", balance = "numeric"))

# Create an instance of the class
my_account <- new("bank_account", name = "Alice", balance = 1000)

# Define a method for printing the balance
print.bank_account <- function(object) {
  cat("Balance for account of", object@name, "is", object@balance, "dollars.")
}

# Apply the print method to the amount slot
getS3method("print", "amount")(my_account)

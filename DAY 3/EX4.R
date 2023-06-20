# Load the mtcars dataset
data(mtcars)

# Find the car which gives maximum city miles per gallon
max_city_mpg <- max(mtcars$mpg)
car_max_city_mpg <- rownames(mtcars[mtcars$mpg == max_city_mpg, ])

cat("The car which gives maximum city miles per gallon is:", car_max_city_mpg, "\n")

# Find the cars which gives minimum disp in compact and subcompact class
compact_df <- subset(mtcars, carb %in% c(1, 2) & cyl == 4)
min_disp <- min(compact_df$disp)
cars_min_disp <- compact_df[compact_df$disp == min_disp, "model"]

cat("The cars which gives minimum disp in compact and subcompact class are:", cars_min_disp, "\n")



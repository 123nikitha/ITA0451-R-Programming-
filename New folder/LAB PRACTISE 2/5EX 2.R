data(ChickWeight)
summary(ChickWeight)
last_six <- tail(ChickWeight, 6)
print(last_six)
ordered_df <- ChickWeight[order(ChickWeight$weight), ]
print(ordered_df)
library(reshape2)

melted_df <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print(melted_df)
cast_df <- dcast(melted_df, Diet ~ variable, fun.aggregate = mean)
print(cast_df)

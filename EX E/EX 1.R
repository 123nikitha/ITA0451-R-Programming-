x <- seq(1, 43, along.with = Id)
y <- seq(-20, 0, along.with = Id)
letters <- c("a", "b", "c")

df <- data.frame(Id = rep(1:4, each = 3),
                 Letter = rep(letters, 4),
                 x = x,
                 y = y)

df

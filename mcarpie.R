library(ggplot2)

mtcars_cyl <- as.data.frame(table(mtcars$cyl))

ggplot(mtcars_cyl, aes(x="", y=Freq, fill=as.factor(Var1))) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  labs(title="Proportion of Cars by Cylinder Type", fill="Cylinder Type") +
  scale_fill_discrete(name="Cylinder Type", labels=c("4 Cyl", "6 Cyl", "8 Cyl"))

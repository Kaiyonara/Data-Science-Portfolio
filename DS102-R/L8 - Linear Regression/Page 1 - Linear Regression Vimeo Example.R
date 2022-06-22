data("USArrests")
View(USArrests)

library("ggplot2")

regressionModel <- lm(Assault ~ UrbanPop, USArrests)
summary(regressionModel)

graphAssaults <-ggplot(USArrests, aes(x=UrbanPop, y=Assault)) +
  geom_point() +
geom_smooth(method=lm, se=FALSE)

graphAssaults

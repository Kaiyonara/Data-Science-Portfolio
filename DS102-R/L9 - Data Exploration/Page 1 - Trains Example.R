ggplot(train_accidents, aes(x=EqpDamg, y=Speed)) + geom_point() + geom_smooth(method=lm, se = FALSE) + xlab ("Amount of Damage in Dollars")

train_accidents <- DSO102_L8_train_accidents

View(DSO102_L8_train_accidents)

install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")


library(ggplot2)

install.packages("dplyr")

train_accidents
View (train_accidents)

#To get a better feel of the data, you could start out with a bar graph:

ggplot(train_accidents, aes(x=Month)) + geom_bar()

#Then try to graph them by State.

ggplot(train_accidents, aes(x=State)) + geom_bar()

#If you want to focus on the massive amounts of accidents in Texas, filter
#out only Texas, ordering it by the amount of damage to equipment:

TXtrains <- train_accidents %>% filter(State == "TX") %>% arrange(EqpDamg)
TXtrains

#How about taking a look at any outliers in damage costs by month?

ggplot(TXtrains, aes(x = Month, y = EqpDamg)) + geom_boxplot(by = "Month")

#Lesson 9 Hands-On
#Kai Bartlette

library("ggplot")
library("dplyr")
library("gapminder")

#I chose:

#Costa Rica
#Mexico
#Italy
#Portugal
#Japan

gapminder
View(gapminder)

#Find the different countries in the dataset.
levels(gapminder$country)

#Find the different years.
unique(gapminder$year)

#Boxplot of GDP.
ggplot(gapminder, aes(x = year, y = gdpPercap)) + geom_boxplot()

#Let's filter by our chosen countries.
five.countries <- gapminder %>% filter(country %in% c("Costa Rica", "Mexico", "Italy", "Portugal", "Japan"))

#Run the boxplot again:
ggplot(five.countries, aes(x = country, y = gdpPercap)) + geom_boxplot()

#Color each country:
ggplot(five.countries, aes(x = year, y = gdpPercap, color = country)) + geom_line()

#Which country of the five you chose has the lowest per capita GDP in 1952?
Costa Rica has the lowest per capita GDP.

#Which country of the five you chose has the lowest per capita GDP in 2007?
Again, Costa Rica.

#Which has the highest per capita GDP in 1952? In 2007?
In 1952, Italy has the highest. In 2007, Japan.

#Create a line plot with year on the horizontal axis and lifeExp on the vertical 
#axis for the five countries; give each country a different color line. Describe
#the variations in life expectancy between the countries.

ggplot(five.countries, aes(x=year, y = lifeExp, color = country)) + geom_line()

The overall trend, most likely due to advances in health care, is that
all life expectancies rise.

#On the entire gapminder data frame, compute the median of lifeExp 
#for each year. For what years is the life expectancy for your five countries 
#above the median life expectancy for the entire gapminder data frame?

lifeExp.median <- five.countries %>% select(lifeExp,year) %>% group_by(year) %>% summarise(lifeExp = median(lifeExp))
lifeExpwhole.median <- gapminder %>% select(lifeExp,year) %>% group_by(year) %>% summarise(lifeExp = median(lifeExp))

#Life expectancy for my five countries is above the median life in every year
#sampled.


summary(gapminder)
summary(five.countries)
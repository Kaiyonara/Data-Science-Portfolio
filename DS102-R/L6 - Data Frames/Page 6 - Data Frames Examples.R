#Page 2
#Data Frames
#Creating and Viewing Data Frames

Snowman_Name <- c ("Frosty", "Frostette", "Jack Frost", "Jackie Frost", "Coal Eye")

Accessory <- c("Top Hat", "Scarf", "Coal Buttons", "Twig Arms", "Carrot Nose")

Location <- c("South Dakota", "North Dakota", "Colorado", "Minnesota", "Alaska")

Body_Sections <- c(3,4,2,3,2)

Snowmen <- data.frame(Snowman_Name, Accessory, Location, Body_Sections)

View (Snowmen)


#Numbers don't need to be in quotes, just separated by commas.

#Snowmen is the name of the data frame.

#Put it together including all of the column labels.

#You can also use:

head(Snowmen)
#Shows you the first six rows of the data frame.

tail(Snowmen)
#Shows you the first six rows of the data frame.

Snowmen
#Just running this line will bring up all rows.
#You might not want to use this with 1K data points.

Snowmen$Accessory
#Just running this command will bring up the row of accessories.
#$ - subset

#If you only want to view one row of the data:
Snowmen[3, ]
#[row index, column index]

#If you only want to look at the accessory for Jack Frost (single data point):
Snowmen [3,2]

#R prints out levels along with the element that you access.
#Levels are The categorical option for that variable.
#There are five levels to the Accessory variable.

#If you want to add more columns later:
Snowmen$Gender <- c("Male", "Female", "Male", "Female", "Male")


Name <- c("Bob", "Nancy", "Cyrus", "Jackie")
Age <- c(36, 31, 26, 34)
Dominant_Hand <- c("Right", "Right", "Left", "Right")
friends <- data.frame(Name, Age, Dominant_Hand)

friends

View(friends)

#A factor is a categorical variable, in R.
#Levels are the different categorical options for the data inside the factor.

#There is a variable named dogs$puppy_class with three categorical options: 
#Working, Herding, and Sporting.
#What would be the factor(s), and what would be the level(s)?
#puppy_class is the factor, and Working, Herding and Sporting are the levels.

#friends$Name factor can have four levels, the four names of your friends.
#friends$Dominant_Hand factor can have two levels, Right or Left.

#To add shoe size to the data frame:

friends$Shoe_Size <- c(10,8,14,9)

#To access data in R.

mtcars
View(mtcars)

head(mtcars)
tail(mtcars)
help(mtcars)

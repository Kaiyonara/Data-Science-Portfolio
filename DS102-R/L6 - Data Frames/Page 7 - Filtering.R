#Page 6 - Manipulating Data

#Filtering: Selecting a subset of observations that meet specific criteria from a data frame.
#Ordering: Arranging the observations in a data frame into a particular order according to given criteria.
#Selection: Choosing certain variables from a data frame.
#Mutation: Computing new variables from variables that already exist in the data frame.
#Grouping: Creating groups of observations that have given common characteristics.
#Summarizing: Describing observations using sample statistics.

install.packages("dplyr")

#dplyr helps you do data wrangling.

#First function is FILTER for a set of values:

NewDataFrame <- DataFrame %>% filter(column == value)
#ONE VALUE ONLY.
#filter is the argument name.
#Must be a double equals.
#If it's a number you don't need quotes, if its a string you do need quotes.
# %>% (means "and then")

#This second function is FILTER for a set of values in a VECTOR:

NewDataFrame <- DataFrame %>% filter(column %in% c(value,value))

#This third function is ARRANGE:

NewDataFrame <- DataFrame %>% arrange(desc(column))
#This arranges large to small (desc) or small to large (ascending is the default):

#This fourth function is SELECT:

NewDataFrame <- DataFrame %>% select(column, column)
#You can specify what column names you want to see.

#This fifth function is SUMMARISE:

NewDataFrame <- DataFrame %<% summarise(NewColumnName = function(column))
#Median, ,mean, max and min are popular for function names.

#This sixth function is GROUP_BY:

NewDataFrame <- DataFrame %>% group_by(column) %>% summarise(NewColumnName = function(column))
#Rolling things up by a variable.
#Must be used in conjunction with summarise to get the aggregation.

#----------
#Using the student.mat data frame:
#Reload your libraries by either clicking on dplyr in the packages pane or running:

install.packages("dplyr")

#Then, recall the dataset by following "Page 5 - Importing CSV or Excel Files"
#Then:
library(readxl)
my_petsExcel <- read_excel("Pets.xlsx")
my_pets <- read.csv("PetsCSV.csv")
View(Pets)
View(PetsCSV)

#Assign it again to the variable.
my_pets <-Pets


filter(my_pets, Animal == "Goat")

filter(my_pets, Animal == "Goat", Age <= 2)

filter(my_pets, Weight > 3)

filter(my_pets, Animal %in% c ("Goat", "Cat", "Guinea Pig"))

#I noticed we didn't add 'Skin' at some point to the data frame:

#To add Skin to the data frame:

#Not sure if this is necessary:
#Skin <- c("hair","hair","fur","fur", "scales", "scales")

my_pets$Skin <- c("hair","hair","fur","fur", "scales", "scales")

filter(my_pets, Animal != "Gold Fish")

#Often you will want to save the data frame that is returned by filter() for 
#further analysis. You can do this by assigning the returned value to a 
#variable. For example:

mammals <- filter(my_pets, Animal != "Gold Fish")
mammals



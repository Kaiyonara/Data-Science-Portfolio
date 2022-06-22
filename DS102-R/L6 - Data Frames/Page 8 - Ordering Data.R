#Page 8 - Ordering Data
#Data Frames

#You can use the arrange() function to order the observations of the data frame 
#in a certain order. For example, if you wanted to sort the rows from youngest 
#to oldest (ascending order), you could do this as follows:

arrange(my_pets, Age)

#You could sort from oldest to youngest as follows using the desc() function 
#(which is short for "descending"):

arrange(my_pets, desc(Age))

#Suppose you want to select only the mammals, and then sort them from youngest 
#to oldest.

mammals <- filter(my_pets, Animal != "Gold Fish")
arrange(mammals, Age)

#You can achieve the same results by using the pipe operator, which is %>%. The 
#pipe operator basically orders things, so it says: "take the data frame my_pets
#and then filter it and then arrange it."

my_pets %>% filter(Animal != "Gold Fish") %>% arrange(Age)

#When you are using the pipe operator to connect data frames and functions, you 
#do not include the data frame as the first argument of the function; it instead 
#goes first. Thus, the only argument to filter() is the condition that selects 
#rows; the only argument to arrange() is the variable on which you want to sort.
#The pipe operator can make data analysis easier to understand and read; it 
#feels more like a logical sentence.

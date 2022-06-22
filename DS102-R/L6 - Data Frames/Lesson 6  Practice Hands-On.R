#Lesson 6 Practice Hands-On
#Kai Bartlette

#From the mtcars data frame, create a box plot of miles per gallon (the mpg 
#variable) grouped by the number of cylinders in the engine (the cyl variable). 
#Do these box plots make sense? 
Yes.
#Also, use the summarize() and group_by() 
#functions to compute how many cars have four cylinders, how many have six, and 
#how many have eight.

#Prepare a report (using MS Power Point or similar) with all of these elements 
#and any code used to arrive at the results.

mtcars

select(mtcars, mpg, cyl)

mtcars %>% group_by(cyl) %>% summarize(count = n())
#11 cars have 4 cylinders,
#7 cars have 6 cylinders, and
#14 cars have 8 cylinders.


ggplot(mtcars, aes(x = cyl, y = mpg)) + geom_boxplot(aes(group=cyl))


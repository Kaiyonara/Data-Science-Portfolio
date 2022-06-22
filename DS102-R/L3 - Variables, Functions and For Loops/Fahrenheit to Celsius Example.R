#f.to.c is the name of the function.
#f.to.c is the variable that you assign a function to.
#This is indicated by the assignment operator <-.

f.to.c <- function(TF){
  (TF - 32) * 5 / 9
}

#function() indicates you are creating a function.
#(TF) shows that the function will have one argument named TF.
#This line finishes with an open brace {, indicating you are 
# beginning the definition of the function.
#
#The second line of the function is:
#
#(TF - 32) * 5 / 9
#
#This is an expression that actually converts from Fahrenheit 
#to Celsius. This line of the function is the last line of 
#code in the function. (It is also the first line of code, and
#actually the only line of code.) The value computed by the last
#line of code is the value that is returned by the function.
#
#The last line of the function is just a closing brace },
#which signifies the end of the function.

temp.in.c <- f.to.c(73)

#When you call the function with f.to.c(73), the function sets
#TF to a value of 73. It then executes the next line of code
#which subtracts 32 from TF and multiplies the result by 5/9,
#giving the value 22.77778. This is the value that is returned
#by the function.
#
#When the script is run, you can see in the Environment pane
#that a new variable, temp.in.c has been created. You can find
#the value of temp.in.c by typing it in the Console pane:

temp.in.c
#
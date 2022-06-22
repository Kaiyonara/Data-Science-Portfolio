install.packages("ggplot2")
install.packages("datasets")
install.packages("readxl") 
install.packages("dplyr") 
install.packages("PerformanceAnalytics")
install.packages("corrplot") 
install.packages("gapminder")
install.packages("gridextra")
install.packages("Ecdat")
install.packages("corpcor")
install.packages("GPArotation")
install.packages("psych")
install.packages("IDPmisc")
install.packages("lattice") 
install.packages("treetop")
install.packages("scales")
install.packages("rcompanion")
install.packages("gmodels")
install.packages("car")
install.packages("caret")
install.packages("gvlma")
install.packages("predictmeans")
install.packages("caret")
install.packages("magrittr")
install.packages("tidyr")
install.packages("lmtest")
install.packages("popbio")
install.packages("e1071")
install.packages("data.table")
install.packages("effects")
install.packages("multcomp")
install.packages("mvnormtest")

library("ggplot2") #ALWAYS run this again before starting to use any command
#with ggplot2.

#This creates a vector and assigns it to a variable named 'height.
height <- c (171,192,183,177,154,176)

#This creates the data frame from height.
height_df <- data.frame (height)


#Create a histogram of height with these commands.
h <- ggplot(height_df, aes (x = height))
h + geom_histogram()

#To add in bins, change it to:
h + geom_histogram(binwidth = 10)

#To add a title and labels:
h + geom_histogram(binwidth = 10) +
ggtitle("Histogram of Heights") +
xlab ("Height (in cm)")

#This command makes the height of the bars to be related to the relative frequency, or
#the fraction of the total number of values that fall into each bin.
h + geom_histogram(binwidth = 10, aes(y = ..count../sum(..count..))) +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)") +
  ylab("Relative frequency")

#Adding aes(y = ..count../sum(..count..) as an argument to geom_histogram() is the code that 
#changes the counts to relative frequency. Adding ylab("Relative frequency") gives a reasonable 
#label for the vertical axis. These commands give the following histogram. The vertical axis is 
#the relative frequency.

#You can add color, to both the lines and fill:
h + geom_histogram(binwidth = 10, fill = "goldenrod", color = "deepskyblue4") +
  ggtitle("Histogram of Heights") + xlab("Height (in cm)")

#Eruptions Histogram
#--------------------

faithful

faithful_histogram <- ggplot(faithful, aes(x = eruptions))
faithful_histogram + geom_histogram()

#You could use the binwidth = argument or, you can create a vector of bin boundaries
#(sometimes called breaks), and pass this vector as the breaks argument to 
#geom_histogram(). This next example creates bins or breaks with a width of 0.2:

faithful_histogram + geom_histogram(breaks = seq(1.4, 5.2, by = 0.2))

#Although it doesn't look much different in the general shape, you will notice that 
#the counts in the second histogram for eruptions goes up much higher than the 
#eruption counts in the first histogram.


#Review: The waiting times for the Old Faithful data are in the column labled waiting.
#You set up a histogram of these times with the following call to ggplot():
waiting_histogram <- ggplot(faithful, aes(x = waiting))

#Which of the following commands will create the following histogram? This histogram
#has bins whose width is three minutes.

#A
waiting_histogram +
  geom_histogram()

#B
waiting_histogram +
  geom_histogram(binwidth = 10)

#C
waiting_histogram +
  geom_histogram(breaks = seq(30,100,by = 7))

#D
waiting_histogram + geom_histogram(binwidth = 3)

breaks

warpbreaks



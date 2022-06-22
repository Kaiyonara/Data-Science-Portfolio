#Statistical Plots - Lesson 5 Hands-On
#Kai Bartlette

#Using the data set rivers:

rivers

#Build the data frame with the length of the rivers:

rr <- data.frame(rivers)

#Show the first six rows of data in the data frame with:

head(rr)

#Create the histogram of length of rivers with:

rr <- ggplot(rr, aes (x = rivers))
h + geom_histogram()

#To add in bins, change it to:

h + geom_histogram(binwidth = 10)

#To add a title and labels:

h + geom_histogram(binwidth = 10) +
  ggtitle("Histogram of the Length of 141 Major Rivers in North America") +
  xlab ("Length in Miles")

#This command makes the height of the bars to be related to the relative frequency, or
#the fraction of the total number of values that fall into each bin:

h + geom_histogram(binwidth = 10, aes(y = ..count../sum(..count..))) +
  ggtitle("Histogram of the Length of 141 Major Rivers in North America") + xlab("Length in Miles") +
  ylab("Relative Frequency")

#This creates a boxplot of the length of the rivers:

rivers_boxplot <- ggplot(rr, aes(x = " ", y = rivers))
rivers_boxplot + geom_boxplot() + xlab(" ")

#You can see from the boxplot that there are several outliers that are high.

#This creates a normal probability plot:

ggplot(rr, aes(sample = rivers)) + geom_qq()

#These data do not appear to come from a normal distribution. They do not
#lie approximately in a straight line, nor do they meet the "fat pencil test".


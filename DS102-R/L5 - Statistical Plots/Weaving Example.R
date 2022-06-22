weaving_boxplot <- ggplot(warpbreaks, aes(x = " ", y = breaks))
weaving_boxplot + geom_boxplot() + xlab(" ")
  
  #Box plots are good for looking at outliers. 
  #Any points that actually show up in the box plot in R are outliers, 
  #meaning that they are very very extreme in relation to the rest of the data points.
  #A really high or low outlier can skew your data, bring it high or low.
  #They must first be examined and then possibly removed.
  
  #You can also do it mathmetically by finding the inter quartile range, multiplying it by 1.5
  #and then add that number to the top and bottom quartiles of data.
  
  summary(warpbreaks)
  #First quartile is 18.25.
  #Third is 34.
  #Subtract to get the range.
  IQR <- 34 - 18.25
  #15.75 is the range, or IQR.
  
  
  
  #Multiply this by 1.5.
  Outlier_range <- IQR * 1.5
  #Outlier range is 23.635.
  
  #Third quartile of 34 + Outlier range = 
  34 + Outlier_range # = 57.625
  #If you refer back to the box plot, those two points do appear to be outside of 57.625 and -5
  #is an outlier.
  
  cars
  
  head(cars)
  
  d <- ggplot(cars, aes(x = "", y = dist))
  d + geom_boxplot() + xlab("")
  
  #The box plot is created from the following values:
  
  #Minimum: The smallest value in the vector.
  #1st Quartile: The value below which one quarter of the values lie.
  #Median: The middle value in the vector: one-half of the values are larger, and one-half of the values are smaller.
  #3rd Quartile: The value below which three quarters of the values lie.
  #Maximum: The largest value in the vector.
  #Remember, you can use the summary() function to compute all of these 
  #values (plus the mean). It works on data frames just as well as vectors, 
  #but you will need to specify the variable in the data frame you are 
  #interested in using the dollar sign $ after the dataset name. 
  #So, cars$dist specifies that you want a summary of the dist variable 
  #from the cars dataset.
  
  summary(cars$dist)
  
  #To create a normal probability plot:
  ggplot(warpbreaks, aes(sample = breaks)) + geom_qq ()

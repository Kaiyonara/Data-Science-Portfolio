
#This creates a vector called eruption.times.
eruption.times <- faithful$eruptions

#This splits the vector in two - short and long.
short <- eruption.times[eruption.times <= 3]
short

long <- eruption.times[eruption.times > 3]
long

#1. How many elements are in the vector short? 97
length(short)

#2. How many elements are in the vector long? 175
length(long)

#3. What is the mean eruption time of the short eruptions? 2.038134 seconds
mean(short)

#4. What is the mean erruption time of the long eruptions? 4.291303 seconds
mean(long)

#5. What is the standard deviation of the short eruption times? 0.2668655 seconds
sd(short)

#6. What is the standard deviation of the long eruption times? 0.4108516 seconds
sd(long)




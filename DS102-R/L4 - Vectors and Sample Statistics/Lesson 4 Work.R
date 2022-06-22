sleep_hours3 <- seq(6, 12, by=0.5, length.out = 9)

sleep_hours4 <- seq(6, 12, length.out = 9)

#subsetting

sleep_hours5 <- sleep_hours[1]

sleep_hours <- c(7,4,8,9,5,11)

1:10

100:1

seq(0,1,by = 0.1)

seq(12,6,length.out = 4)



heights <- c(171, 192, 183, 177, 154, 176)

heights[1]
heights[9]
heights[3]


heights / 2.54
#This equation converted heights from centimeters to inches.

h.inch <- heights / 2.54

soles <- c(4, 1, 2, 6, 3, 5)

heights - soles

x <- c(1,2)
y <- c(4,5,6,7,8,9)

y - x

n = 1:10
sqrt(n)

62 < 67
62 > 67
62 >= 67
62 <= 67
62 == 67
62 != 67




sleep_hours >= 8

enough_sleep <- sleep_hours [sleep_hours >=8]

not_enough_sleep <- sleep_hours[sleep_hours < 8]

heights < 180

short <- heights[heights < 180]
short

tall <- heights[heights >= 180]
tall

new.heights <- heights [heights != 177]
new.heights


View(quakes)
magnitude <- quakes$mag
magnitude

#Measures of Central Tendency

mean(magnitude)
median(magnitude)

#Measures of Dispersion

max(magnitude)
min(magnitude)
var(magnitude)
sd(magnitude)

summary(magnitude)

length(magnitude)

sort(magnitude)

library(datasets)
faithful


eruption.times <- faithful$eruptions

#The number of values in the sample is given by:
length(eruption.times)

#The largest and smallest values in the sample are given by:
max(eruption.times)
min(eruption.times)

#The mean and median are given by:
mean(eruption.times)
median(eruption.times)

#The variance and standard deviation are given by:
var(eruption.times)
sd(eruption.times)

#Create a vector of wait times (times between eruptions) with this statement:
wait.times <- faithful$waiting

mean(wait.times)
median(wait.times)
min(wait.times)
max(wait.times)

#This creates a vector called eruption.times.
eruption.times <- faithful$eruptions

#This splits the vector in two - short and long.
short <- eruption.times[eruption.times <= 3]
short

long <- eruption.times[eruption.times > 3]
long

#How many elements are in the vector short? 97
length(short)

#How many elements are in the vector long? 175
length(long)

#What is the mean eruption time of the short eruptions? 2.038134 seconds
mean(short)

#What is the mean erruption time of the long eruptions? 4.291303 seconds
mean(long)

#What is the standard deviation of the short eruption times? 0.2668655 seconds
sd(short)

#What is the standard deviation of the long eruption times? 0.4108516 seconds
sd(long)




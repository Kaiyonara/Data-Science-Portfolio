#Lesson 7 Hands-ON
#Kai Bartlette

nhtemp

first25 <- nhtemp[1:25]
last25 <- nhtemp[36:60]

k <- t.test(nhtemp[first25], nhtemp[last25], paired = TRUE)
k

#Below is what prints:
#Paired t-test

#data:  nhtemp[first25] and nhtemp[last25]
#t = 2.094, df = 24, p-value = 0.047
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  0.005401357 0.746598643
#sample estimates:
#  mean of the differences 
#  0.376 


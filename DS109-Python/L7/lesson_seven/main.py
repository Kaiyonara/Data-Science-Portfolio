#Kai Bartlette

pi = 3.14159
pi_string = str(pi)
print("The value of Pi is " + pi_string)

number_list = [33, 19, 25, 7, 18]
min_number = min(number_list)
print("The minimum number in the list is " + str(min_number))

import sys

print ('Python Version:', sys.version)

import sys

print('Interpreter Location:', sys.executable)

import keyword

print('Keywords: ')
for word in keyword.kwlist:
    print(word)


# since the entire module is imported, the module name
# must precede the function names (dot syntax)
import math

# round 8.5 down using `floor`
print("Round the number 8.5 down: ", math.floor(8.5))

# round 8.5 up using `ceil`
print("Round the number 8.5 up: ", math.ceil(8.5))

# compute 5^10 using `pow`
print("5 to the power of 10 = ", math.pow(5, 10))

# compute the square root of 82 using `sqrt`
print("The Square Root of 82 is: ", math.sqrt(82))   


import math
import random

my_random = random.random() * 100
#The first argument given is the range from 1 to 49. 
#The second argument is how many numbers you want to be 
#returned from that range.
print(my_random)

square_root = math.sqrt(my_random)

print(square_root)
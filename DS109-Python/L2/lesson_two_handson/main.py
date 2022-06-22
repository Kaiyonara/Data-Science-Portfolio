#Kai Bartlette

from stat import FILE_ATTRIBUTE_TEMPORARY


day = "3"
month = "February"
year = "1980"

my_birthday = month + " " + day + ", " + year
print(my_birthday)

#

first = "happy"
second = "birthday"
third = "to"
fourth = "you"

final = first + " " + second + " " + third + " " + fourth
print(final.upper())

#

age = 15

if age < 10:
    print("Not permitted")
elif age < 15:
    print("Permitted with a parent")
elif age < 18:
    print("Permitted with anyone over 18")
elif age >= 18:
    print("Permitted to attend alone")

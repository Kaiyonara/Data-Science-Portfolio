my_message = "Hello"
my_other_message = "how are you?"

# concatenate the above variables with a comma in between
my_final_message = my_message + ", " + my_other_message

print(my_final_message)

day = "31"
year = "2022"
month = "May"

today_is = month + " " + day + ", " + year

print(today_is)

day = 1
year = 2017
month = "August"

today_is = month + " " + day + ", " + year

print(today_is)

day = 1
year = 2017
month = "August"

today_is = month + " " + str(day) + ", " + str(year)

print(today_is)

today_is = month + " " + str(day) + ", " + str(year)

day = 1
year = 2017
month = "August"

#today_is = str.format("The date is {}, {} {} ", year, month, day)
today_is = str.format("The date is {} {}, {}", month, day, year)
print(today_is)

my_message = "THESE ARE ALL CAPS"

print(my_message.lower())

my_message = "these are all lower"

print(my_message.upper())

experience = "this game is fun"
better_experience = experience.replace("fun", "awesome")

print(experience)
print(better_experience)

message = "I like cats, because cats are friendly"
new_message = message.replace('cats', 'dogs')

print(new_message)

my_message = "Split these words for me"
split_at_spaces = my_message.split()

print(split_at_spaces)

my_message = "apples,oranges,bananas"
split_at_commas = my_message.split(",")

print(split_at_commas)

# details of the person who wants to watch the movie
person_age = 17
person_money = 25

# the requirements to watch the movie
age_restriction = 18
movie_price = 10

# conditions
is_old_enough = person_age >= age_restriction
has_enough_money = person_money >= movie_price

# two conditions combined using 'and'
can_watch_movie = is_old_enough and has_enough_money
print(can_watch_movie)

# the output is False, because the person's age is less than the required age 

person_money = 12

if person_money >= 10:
  print("This person can watch the movie")
#
person_money = 8

if person_money >= 10:
  print("This person can watch the movie")
#
person_money = 8

if person_money >= 10:
  print("This person can watch the movie")
else:
  print("Sorry, but you don't have enough money")
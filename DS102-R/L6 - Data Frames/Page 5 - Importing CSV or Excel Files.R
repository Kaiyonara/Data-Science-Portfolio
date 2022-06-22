#Page 4, 5
#Data Frames
#Importing CSV Data/Importing an MS Excel File

#TXT files are separated by tabs.
#Some of the more common separators or limiters are:
#Spaces, pipes, commas, tabs and periods as long as you specify which you are using.

#To import a CSV file:
my_pets <- read.csv("PetsCSV.csv")

#Make sure you've unzipped all files and extracted them to the folder you are
#trying to reference.

# In the Environment pane, you will see a button for Import Dataset. 
#Click on the down arrow.

#You want the From Text(base) option that is highlighted.
#The original file is shown on the top right hand side, and a preview of the 
#data frame R will create is on the bottom right. You'll want to make sure that 
#the radio button Yes is clicked for Heading if you have one. The other 
#important feature to note here is the last checkbox at the bottom, for Strings 
#as factors. Most of the time, it is a good idea to leave this checked, as it 
#will turn your character data into a categorical variable that can be used for 
#most analyses. However, a few commands need to be done with strings only, so if
#you come up with errors, you may need to re-import without this check mark.

#Once you've changed all the options you need, hit the Import button.

#For Excel spreadsheets (.xslx files), in the Environment pane, you will see a 
#button for Import Dataset. Choose the 'From Excel' option. Browse to where 
#your file is.  The First Row as Names checkbox will provide automatic headings 
#for you as long as it is checked.

#Once you've changed all the options you need, hit the Import button.

#Doing that automatically generates this code:

library(readxl)
my_petsExcel <- read_excel("Pets.xlsx")
View(Pets)

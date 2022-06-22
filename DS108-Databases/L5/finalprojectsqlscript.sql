create view CurrentCustomers as
select customer_id, first_name, last_name
from customer
where active = 1

create view initialCustomber as
select first_name, last_name, email
from customer
where customer_id < 100

#You mispelled initialCustomber so you have to keep using it that way when you call it.

select * from initialCustomber

#Create a table named "ProductList". Include the following columns:

#ProductId
#ProductName
#Price
#DateAdded
#EmployeeSupportId
#Include the following requirements:

#Give each column a data type that would apply.
#Give the DateAdded column a default value for the current local time.
#All columns CANNOT be null.
#Next, insert one product into the table following the given guidelines when the table was created. 
#When inserting the data, don't include the ProductId or the DateAdded. 
#Finally, run a query to see the single product in your table.

CREATE TABLE ProductList (
    ProductId INTEGER PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50) NOT NULL,
    Price VARCHAR(50) NOT NULL,
    DateAdded DATETIME,
    EmployeeSupportId INTEGER UNIQUE
)






CREATE TABLE ProductList1 (
    ProductId INTEGER PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50) NOT NULL,
    Price VARCHAR(50) NOT NULL,
    DateAdded DATETIME DEFAULT CURRENT_TIMESTAMP,
    EmployeeSupportId INTEGER UNIQUE
)

insert into ProductList1 (ProductName, Price, EmployeeSupportId)
values ("Black Forest Organic Gummy Bears", 0.99, 1)

select * from ProductList1

CREATE TABLE Authors (
    AuthorID INTEGER PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(25),
    BirthCountry VARCHAR(25)
)

insert into Authors (FullName, BirthCountry)
values ("Jane Austen", "England"),
insert into Authors (FullName, BirthCountry)
values("Charles Dickens", "England")

insert into Authors (FullName, BirthCountry)
values("Mark Twain", "United States")

select * from Authors

CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY AUTO_INCREMENT,
    BookName VARCHAR(50) NOT NULL,
    AuthorID INTEGER, FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID)
)

select * from Books

insert into Books (BookName, AuthorID)
values ("Pride and Prejudice", 1),
("Sense and Sensibility", 1),
("The Pickwick Papers", 2);

#Run a query that joins the Authors and Books table together using the AuthorID foreign key.

#Next, create a view named AuthorBooks using the join query created in step 1 adding the following parameters:

#Show only the Authors full name and book name.
#Rename the column name results using the AS keyword.
#The Authors FullName should display as AuthorName.
#The Books Name should display as BookName.
#Order the results alphabetically by the authors full name.
#Lastly, run a query to see the view you just created.


SELECT * FROM Authors 
JOIN Books USING(AuthorID);


SELECT BookName, FullName as AuthorName FROM Authors 
JOIN Books USING (AuthorID)
ORDER BY FullName;




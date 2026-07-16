 #practice
create table tbl_employee
( 
empid int primary key ,
name varchar(100) not null,
salary int default 10000 check(salary>=10000), # here we replacing default value from null to 0 
joiningDate date ,
gender enum('Male','Female'),
emailid varchar(100) unique,
mobile bigint
);

## use insert 
insert into tbl_employee
 values
 (1,'Sachin',12000,'2026-04-15','male','sachinkumar1852@gmail.com',9899410134),
 (2,'Rahul', 25000, '2023-01-15', 'Male', 'rahul@gmail.com', '9876543210'),
(3,'Priya', 35000, '2022-06-20', 'Female', 'priya@gmail.com', '9876543211'),
(4,'Amit', 40000, '2021-09-10', 'Male', 'amit@gmail.com', '9876543212'),
(5,'Neha', 28000, '2024-02-05', 'Female', 'neha@gmail.com', '9876543213'),
(6,'Rohan', 50000, '2020-11-25', 'Male', 'rohan@gmail.com', '9876543214'),
(7,'Sneha', 32000, '2023-08-18', 'Female', 'sneha@gmail.com', '9876543215'),
(8,'Vikas', 45000, '2021-04-12', 'Male', 'vikas@gmail.com', '9876543216'),
(9,'Pooja', 38000, '2022-12-01', 'Female', 'pooja@gmail.com', '9876543217'),
(10,'Arjun', 55000, '2019-07-22', 'Male', 'arjun@gmail.com', '9876543218'),
(11,'Kavita', 30000, '2024-01-08', 'Female', 'kavita@gmail.com', '9876543219'),
(12,'Manish', 42000, '2023-03-17', 'Male', 'manish@gmail.com', '9876543220'),
(13,'Anjali', 36000, '2022-10-14', 'Female', 'anjali@gmail.com', '9876543221'),
(14,'Deepak', 47000, '2021-05-09', 'Male', 'deepak@gmail.com', '9876543222'),
(15,'Ritu', 29000, '2023-09-30', 'Female', 'ritu@gmail.com', '9876543223'),
(16,'Suresh', 60000, '2018-12-11', 'Male', 'suresh@gmail.com', '9876543224');

 ## Day3 task  
create database db_day3;
#create table by using constraints 
create table tbl_studentsTable (
ID int auto_increment primary key,
NAME varchar(50) not null,
AGE smallint not null,
GRADE varchar(50) not null  
);


# use of insert 

insert into tbl_studentstable(NAME,AGE,GRADE) 
# here id is auto incremet mode so we'll store value only of specific column (comment)
values('Anvi' , 15, '10th'),
('Mahi' , 14, '9th'),
('kabir' , 16, '11th'),
('Meera' , 15, '10th');

## use of select and solve the task by using operaters 
#•	Display the ID and Name of all students.
select ID , NAME from tbl_studentstable;

# •	Show the students whose Age is less than 16.
select NAME from tbl_studentstable where age<16; 

#•	Display the Name and Age of students studying in '11th' grade. 
select NAME , AGE  from tbl_studentstable where GRADE = '11th';
    
#•	Display the Age of all students    
select AGE from tbl_studentstable;

#•Show the Name of all students.
select NAME from tbl_studentstable;

#task2 
create table tbl_booktable (
BOOKID int auto_increment primary key,
TITLE varchar(200) not null unique,
AUTHOR varchar(100) not null,
PRICE int not null
);

##use of insert 
insert into tbl_booktable(TITLE ,AUTHOR ,PRICE) 
values('The Alchemist ','Paulo Coelho' , 299),(' Wings of Fire ','A.P.J. Abdul Kalam' , 350),
(' 1994','George Orwell' , 280),('Think Like a Monk ','Jay Shetty' , 400);

#use of select
#•	Display the books whose price is 350.
select TITLE from tbl_booktable where PRICE = 350;

#•	Show the title and author of books costing less than 350.
select TITLE ,AUTHOR from tbl_booktable where PRICE< 350;

#•	Find the books whose price is between 280 and 350. 
select TITLE from tbl_booktable where PRICE between 280 and 350;

##•	Display the books with prices 299 and 400. 
select TITLE  from tbl_booktable where PRICE = 299 or  PRICE = 400; 

##•	Show all books except those priced at 280 and 350.  
select TITLE from tbl_booktable where PRICE not in (280 , 350);

# create table for employee
create table tbl_employees (
EMPID int auto_increment primary key ,
NAME varchar(50) not null ,
DEPARTMENT varchar(100) not null , 
SALARY bigint not null
);

# insert 
insert into tbl_employees(NAME, DEPARTMENT, SALARY ) 
values('Rahul' ,'Sales' , 30000), 
('Sneha', 'HR', 40000) , 
('Amit',	'IT', 50000),
('Pooja','Finance'	, 45000);

# questions 
#•	Display the employees whose salary is greater than 40000.
select NAME  from tbl_employees where SALARY > 40000;

#•	Show the names of employees whose salary is less than or equal to 45000.
select NAME from tbl_employees where SALARY <=45000;

#•	Find the employees whose salary is between 30000 and 45000.
select NAME from tbl_employees where SALARY between 30000 and 45000;

#•	Display the employees working in Sales and HR departments.
select NAME from tbl_employees where DEPARTMENT = 'Sales' or DEPARTMENT = 'HR';

#•	Show the employees who are not working in the IT department.
select NAME from tbl_employees where DEPARTMENT not in('IT');

#table 
create table tbl_orders (
OrderId int auto_increment primary key ,
CustomerName varchar(50) not null ,
OrderDate datetime not null 
);

# insert 
insert into tbl_orders(CustomerName, OrderDate ) 
values('Ankit','2024-01-10 10:30:00'), 
('Priya','2024-02-15 14:45:00'),
('Rohan','2024-03-05 09:20:00'),
('Sneha','2024-03-21 12:00:00');

#•	Display the orders placed after 2024-02-01.
select * from tbl_orders where OrderDate > '2024-02-01';

#•	Show the orders placed before 2024-03-01.
select * from tbl_orders where OrderDate < '2024-03-01' ;

#•	Find the orders placed between 2024-02-01 and 2024-03-31.
select * from tbl_orders where OrderDate between '2024-02-01' and '2024-03-31';

#•	Display the orders placed by Ankit and Sneha.
select * from tbl_orders where CustomerName = 'Ankit' or CustomerName = 'Sneha';

#•	Show the orders not placed by Priya and Rohan.
select * from tbl_orders where CustomerName not in ('Priya','Rohan');


create table tbl_products (
ProductId int auto_increment primary key,
ProductName varchar(100) not null,
Category varchar(150) not null,
Price int not null 
);

insert into tbl_products(ProductName , Category , Price) 
values('Pen' , 	'Stationery' , 	10) ,
('Laptop' , 'Electronic' , 55000) ,
 ('Chair', 'Furniture' , 1200), 
 ('Bottle' , 'Kitchen', 150);
 
 #Questions 

#•	Display the products whose price is greater than 500.
select ProductName from tbl_products where Price > 500 ;

#•	Show the products whose price is less than or equal to 1200.
select ProductName from tbl_products where Price <= 1200 ;

#•	Find the products whose price is between 100 and 2000.
select ProductName from tbl_products where Price between 100 and 2000 ;

#•	Display the products in the Electronics and Furniture categories.
select ProductName from tbl_products where Category = 'Electronic' or Category = 'Furniture';

#•	Display the products in the Electronics and Furniture categories.
select ProductName from tbl_products where Price > 500 ;


 
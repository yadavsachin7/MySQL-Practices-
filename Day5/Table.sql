#Day 5 task 
#1 students Table 
create table tbl_students (
Id int auto_increment primary key ,
Name varchar(100) not null ,
Age smallint not null ,
Grade varchar(50)
);

insert into tbl_students(Name,Age ,Grade) 
values('Anvi' ,15, '10th'),
('Mahi' ,14, '9th'),
('Kabir' ,16, '11th'),
('Meera' ,15, '10th');

#practice questions 
#Update the grade of student Anvi from 10th to 11th.
	update tbl_students set Grade = '11th' where name = 'Anvi';

# Update the age of student whose ID = 2 to 15.
	update tbl_students set age = 15 where Id = 2;
    
# Delete the record of the student named Kabir.
	delete from tbl_students where Name = 'Kabir' ;
    
# Add a new column City with datatype VARCHAR(50) to the Students table.
	alter table tbl_students add  City varchar(50);
# Truncate the Students table.
	truncate table tbl_students;
    
# 2.Books Table:
create table tbl_books (
BookId int auto_increment primary key ,
Title varchar(100) not null ,
Author varchar(50) not null ,
Price int
);

insert into tbl_books(Title,Author ,Price) 
values('The Alchemist', 'Paulo Coelho' , 299),
( 'Wings of Fire', 'A.P.J. Abdul Kalam' , 350),
('1984', 'George Orwell', 280),
('Think Like a Monk', 'Jay Shetty' , 400);

# Update the price of The Alchemist to 350.
	update  tbl_books set Price = 350 where Title = 'The Alchemist';
    
# Update the author of 1984.
	update tbl_books set Author = 'James Clear' where Title = '1984';
    
# Delete the book whose BookID = 4.
	delete from tbl_books where BookId = 4;
    
# Add a column Publisher VARCHAR(100) to the Books table.
	alter table tbl_books add Publisher varchar(100);
    
# Truncate the Books table.
	truncate table tbl_books;

#3 Employees Table:

create table tbl_employees (
EmpId int auto_increment primary key ,
Name varchar(100) not null ,
Department varchar(100) not null ,
Salary int
);

insert into tbl_employees(Name,Department ,Salary) 
values('Rahul', 'Sales', 30000),
('Sneha', 'HR', 40000),
('Amit' ,'IT', 50000),
('Pooja' ,'Finance', 45000);

#practice Questions
# Update the salary of employee Rahul to 35000.
	update tbl_employees set salary = 35000 where Name = "Rahul";
    
# Change the department of Sneha from HR to Admin.
	update tbl_employees set department = 'Admin' where Name  = 'Sneha';
    
# Delete the employee working in the Finance department.
	delete from tbl_employees where Department = 'Finance';
    
# Add a new column Email VARCHAR(100) to the Employees table.
	alter table tbl_employees add Email varchar(100);
    
# Truncate the Employees table.
	truncate table tbl_employees;
    
#4. Orders Table:

create table tbl_orders (
OrderId int auto_increment primary key ,
CustomerName varchar(100) not null ,
OrderDate datetime not null
);
insert into tbl_orders(CustomerName,OrderDate) 
values('Ankit', '2024-01-10 10:30:00'),
('Priya', '2024-02-15 14:45:00'),
('Rohan' ,'2024-03-05 09:20:00'),
('Sneha' ,'2024-03-21 12:00:00');

# Update the order date of OrderID = 2.
	update tbl_orders set OrderDate = '2024-03-15 10:30:00' where OrderId = 2;
# Change the customer name from Rohan to Rohit.
	update tbl_orders set CustomerName = 'Rohit' where OrderId = 3;
# Delete the order placed by Sneha.
delete from tbl_orders where CustomerName = 'Sneha'; 
# Add a new column Status VARCHAR(20) to the Orders table.
alter table tbl_orders add Status varchar(20) ;
# Truncate the Orders table
truncate table tbl_orders;

#5.Products Table

create table tbl_products (
ProductId int auto_increment primary key ,
ProductName varchar(100) not null ,
Category varchar(50) not null,
Price int not null
);
insert into tbl_products(ProductName,Category,Price) 
values('Pen', 'Stationery' ,10),
('Laptop', 'Electronics', 55000),
('Chair' ,'Furniture',1200),
('Bottle' , 'Kitchen' , 150);

#Questions
# Update the price of Laptop to 60000.
update tbl_products set Price = 60000 where ProductName = 'Laptop';
# Change the category of Bottle from Kitchen to Home Essentials.
update tbl_products set Category = 'Home Essentials' where ProductName ='Bottle';
# Delete the product named Chair.
delete from tbl_products where ProductName = 'Chair';
# Add a column Stock INT to the Products table.
alter table tbl_products add Stock int ;
# Truncate the Products table.
truncate table tbl_products ;
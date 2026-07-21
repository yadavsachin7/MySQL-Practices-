### class practice task 
use db_day4;
#select total number of employee from each city.
select city ,count(emp_name) from employee group by city;

#select max and min salary from each city.
select city , max(salary),min(salary) from employee group by city;

#select min and max age of male and female.
select gender , max(age),min(age) from employee group by gender; 

# task Day 6 

create table tbl_students (
ID int auto_increment primary key,
Name varchar(50) not null,
Age int not null,
Grade varchar(60)
);

insert into tbl_students(Name, Age ,Grade)
values
('Anvi' , 15 , '10th'),
('Mahi' , 14 , '9th'),
('Kabir' , 16 , '11th'),
('Meera' , 15 , '10th');

#Questions
# Display the number of students in each grade.
select Grade,count(*) 
from tbl_students 
group by Grade;

# Find the average age of students in each grade.
select Grade, avg(Age)
 from tbl_students 
 group by Grade;
# Show grades having more than 1 student.
 SELECT Grade,count(Name)
 from tbl_students 
 group by Grade
 having count(Name) > 1;
# Display grades where the average age is greater than 14.
  SELECT Grade , avg(Age)  
  from tbl_students 
  group by Grade
  having avg(Age) > 14;
# Display the first 2 student records
  SELECT * from tbl_students limit 2 ;
  
  
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
('Think Like a Monk', 'Jay Shetty' , 400),
('Think Like a Monk', 'Jay Shetty' , 400);

# Count the number of books written by each author.
  SELECT Author ,count(*) from tbl_books group by Author;
  
# Find the average price of books by each author.
  SELECT Author, avg(Price) 
  from tbl_books 
  group by Author;
# Show authors whose average book price is greater than 300.
  SELECT Author,  avg(Price)
  from tbl_books
  group by Author 
  having avg(Price) > 300;
# Show authors having more than 1 book.
  SELECT Author, count(*)
  from tbl_books
  group by Author 
  having count(*) > 1;
# Display the first 3 books
  select * from tbl_books limit 3;
  
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

# Count the number of employees in each department.
  select department, count(*) from tbl_employees group by department;
# Find the total salary department-wise.
  select department, sum(salary) from tbl_employees group by department;

# Show departments where the average salary is greater than 40000.
  select department, avg(salary) from tbl_employees group by department having avg(salary) > 40000;

# Show departments having more than 1 employee.
  select department, count(*) from tbl_employees group by department having count(*) > 1;

# Display the top 2 highest-paid employees
  select Name ,Salary   from tbl_employees order by  Salary desc limit 2 ;
  
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

# Count the number of orders placed by each customer.
select CustomerName , count(*) from tbl_orders group by CustomerName ;

# Show customers who placed more than 1 order.
  select CustomerName , count(*) from tbl_orders group by CustomerName having count(*) > 1 ;
  
# Display the first 3 orders.
  select * from tbl_orders limit 3;


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

# Count the number of products in each category.
  select Category  ,count(*) from tbl_products group by Category;
# Find the average price of products in each category.
  select Category  ,avg(price) from tbl_products group by Category;  

# Find the total price category-wise.
  select Category  ,count(price) from tbl_products group by Category;  

# Show categories where the average price is greater than 1000.
  select Category  ,avg(price) from tbl_products group by Category having  avg(Price) > 1000;

# Display the first 2 products.
  select * from tbl_products limit 2;



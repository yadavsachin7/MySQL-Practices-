CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    joining_date DATE,
    gender CHAR(1),
    age INT,
    city VARCHAR(50)
);


INSERT INTO Employee
(emp_id, emp_name, department, salary, joining_date, gender, age, city)
VALUES
(101, 'Vaibhav', 'IT', 60000.00, '2021-06-15', 'M', 25, 'Kanpur'),
(102, 'Priya', 'HR', 45000.00, '2022-01-10', 'F', 28, 'Lucknow'),
(103, 'Amit', 'IT', 72000.00, '2020-09-05', 'M', 30, 'Delhi'),
(104, 'Neha', 'Marketing', 50000.00, '2023-03-01', 'F', 26, 'Kanpur'),
(105, 'Raj', 'Finance', 55000.00, '2019-11-20', 'M', 35, 'Mumbai'),
(106, 'Simran', 'HR', 48000.00, '2021-12-12', 'F', 24, 'Lucknow'),
(107, 'Rohit', 'IT', 65000.00, '2022-07-08', 'M', 29, 'Noida'),
(108, 'Sneha', 'Finance', 53000.00, '2020-05-15', 'F', 31, 'Mumbai'),
(109, 'Ankit', 'Marketing', 47000.00, '2023-01-25', 'M', 27, 'Delhi'),
(110, 'Tina', 'HR', 46000.00, '2021-04-19', 'F', 22, 'Kanpur'),
(111, 'Karan', 'IT', 75000.00, '2018-08-10', 'M', 32, 'Pune'),
(112, 'Divya', 'Finance', 51000.00, '2022-03-03', 'F', 29, 'Lucknow'),
(113, 'Arjun', 'Marketing', 52000.00, '2019-06-06', 'M', 34, 'Jaipur'),
(114, 'Meena', 'HR', 44000.00, '2023-05-14', 'F', 23, 'Noida'),
(115, 'Suresh', 'IT', 71000.00, '2020-01-01', 'M', 31, 'Kanpur'),
(116, 'Alisha', 'Finance', 58000.00, '2019-09-18', 'F', 33, 'Delhi'),
(117, 'Manoj', 'Marketing', 49500.00, '2021-11-30', 'M', 36, 'Pune'),
(118, 'Pooja', 'IT', 68000.00, '2022-10-22', 'F', 26, 'Mumbai'),
(119, 'Ravi', 'Finance', 54000.00, '2023-02-17', 'M', 28, 'Kanpur'),
(120, 'Isha', 'HR', 47000.00, '2020-07-07', 'F', 27, 'Jaipur');
#Basic queries
#1.	Retrieve all employee records. 
select * from employee;

#2.	Display only emp_name and salary of all employees. 
select emp_name , salary from employee;

#3.	Show all employees who work in the IT department.
select emp_name from employee where department = 'IT'; 

#4.	Find employees whose salary is more than 50,000.
select emp_name from employee where salary > 50000;

#5.	List employees who joined after 2020. ### iska matlab 2020 ka koi bhi 
select emp_name , joining_date from employee where joining_date >'2020-12-31';

#6.	Find employees who live in Kanpur or Mumbai.
select emp_name , city  from employee where city = 'kanpur' or city = 'Mumbai';

#7.	Show employees whose name starts with 'A'.
select emp_name from employee where emp_name like 'A%';

#8.	List employees with an age between 25 and 30.
select emp_name from employee where age between 25 and 30;


#Sorting & Filtering
#1.	Sort employees by salary in descending order.
select emp_name from employee order by emp_name desc;

#2.	Sort employees alphabetically by their name.
select emp_name from employee order by emp_name ;

#3.	Find employees with the highest salary.
	select emp_name , salary from employee order by salary ;

#4.	Find employees with the lowest salary.
	select emp_name , salary from employee order by salary desc;




#aggregation function 
#1.	Count the total number of employees.
select count(*) from employee;

#2.	Find the average salary of all employees.
select avg(salary) from employee;

#3.	Find the maximum and minimum salary in the company.
select max(salary), min(salary) from employee;


#7.	Find departments where average salary is greater than 50,000.
	select department  from employee group by department having avg(salary) > 50000;


#############################################################
#collage table 
	CREATE TABLE candidates(  
    id INT PRIMARY key auto_increment,
    name VARCHAR(100),
	college VARCHAR(100),
    phone VARCHAR(15),    
	city VARCHAR(50),
    department VARCHAR(50),   
	fees DECIMAL(10, 2),
    year INT,    
	dob DATE
    );
## insert query 
INSERT INTO candidates (name, college, phone, city, department, fees, year, dob) VALUES 
('Alice Johnson', 'ABC University', '1234567890', 'New York', 'Computer Science', 1500.00, 2025, '2003-05-15'),
('Bob Smith', 'XYZ College', '1234567891', 'Los Angeles', 'Mechanical Engineering', 1600.00, 2025, '2002-08-22'),
('Charlie Brown', 'LMN Institute', '1234567892', 'Chicago', 'Electrical Engineering', 1550.00, 2025, '2003-01-10'),
('Diana Prince', 'PQR University', '1234567893', 'Houston', 'Civil Engineering', 1620.00, 2024, '2002-12-30'),
('Ethan Hunt', 'STU College', '1234567894', 'Phoenix', 'Information Technology', 1580.00, 2025, '2003-03-25'),
('Fiona Apple', 'GHI University', '1234567895', 'Philadelphia', 'Biotechnology', 1650.00, 2024, '2002-09-18'),
('George Clooney', 'JKL Institute', '1234567896', 'San Antonio', 'Physics', 1500.00, 2025, '2003-07-07'),
('Hannah Montana', 'MNO College', '1234567897', 'San Diego', 'Mathematics', 1525.00, 2024, '2002-11-11'),
('Ian Malcolm', 'RST University', '1234567898', 'Dallas', 'Chemistry', 1575.00, 2025, '2003-04-04'),
('Julia Roberts', 'UVW College', '1234567899', 'San Jose', 'Economics', 1610.00, 2024, '2002-06-14'),
('Kevin Spacey', 'XYZ University', '1234567800', 'Austin', 'Business Administration', 1590.00, 2025, '2003-02-20'),
('Laura Croft', 'ABC Institute', '1234567801', 'Jacksonville', 'Graphic Design', 1540.00, 2024, '2002-10-30'),
('Ursula K. Le Guin', 'DEF Institute', '1234567810', 'Milwaukee', 'Literature Studies', 1550.00, 2025, '2003-04-11'),
('Victor Hugo', 'GHI University', '1234567811', 'Memphis', 'History Studies', 1620.00, 2024, '2002-09-29'),
('Walt Disney', 'JKL College', '1234567812', 'Baltimore', 'Animation Studies', 1515.00, 2025, '2003-03-10'),
('Xena Warrior Princess', 'MNO Institute', '1234567813', 'Colorado Springs', 'Martial Arts Studies', 1580.00, 2024, '2002-11-23'),
('Yoda Jedi Master', 'RST University', '1234567814', 'Albuquerque', 'Philosophy Studies', 1640.00, 2025, '2003-02-14'),
('Zoe Saldana', 'UVW College', '1234567815', 'Tucson', 'Dance Studies', 1560.00, 2024, '2002-10-05'),
('Aaron Paul', 'XYZ Institute', '1234567816', 'Fresno', 'Psychology Studies', 1530.00, 2025, '2003-07-17'),
('Bella Swan', 'ABC University', '1234567817', 'Sacramento', 'Biochemistry Studies', 1615.00, 2024, '2002-12-24'),
('Chris Hemsworth', 'DEF College', '1234567818', 'Kansas City', 'Astrophysics Studies', 1599.99, 2025, '2003-01-01'),
('Daisy Ridley', 'GHI Institute', '1234567819', 'Long Beach', 'Environmental Science Studies', 1549.50, 2024, '2002-04-16'),
('Elijah Wood', 'JKL University', '1234567820', 'Virginia Beach', 'Creative Writing Studies', 1501.75, 2025, '2003-08-19'),
('Freddie Mercury', 'MNO College', '1234567821', 'Atlanta', 'Sociology Studies', 1637.30, 2024, '2002-11-28'),
('Gandalf the Grey', 'RST Institute', '1234567822', 'Colorado Springs', 'Theology Studies', 1566.80, 2025, '2003-02-20'),
('Olivia Benson', 'ABC University', '1234567830', 'New York', 'Criminal Justice', 1450.00, 2025, '2003-01-15'),
('Peter Parker', 'XYZ College', '1234567831', 'Los Angeles', 'Photography', 1580.00, 2025, '2002-07-20'),
('Quinn Fabray', 'LMN Institute', '1234567832', 'Chicago', 'Theater Arts', 1500.00, 2024, '2002-10-25'),
('Rick Grimes', 'PQR University', '1234567833', 'Houston', 'Emergency Management', 1600.00, 2025, '2003-04-12'),
('Samantha Carter', 'STU College', '1234567834', 'Phoenix', 'Astrophysics', 1650.00, 2024, '2002-05-30'),
('Tony Stark', 'GHI University', '1234567835', 'Philadelphia', 'Engineering Management', 1700.00, 2025, '2003-06-15'),
('Uma Thurman', 'JKL Institute', '1234567836', 'San Antonio', 'Film Studies', 1550.00, 2024, '2002-09-10');

#Questions using the WHERE clause:

#1.Find candidates from 'New York'.
	select name from candidates where city = 'New York';
    
#2.Retrieve candidates whose department is 'Electrical Engineering'.
	select name from candidates where department = 'Electrical Engineering';
    
#3.	List candidates who paid fees less than 1600.00.
	select name from candidates where fees <1600;
    
#4.	Find candidates born after the year 2002.
	select name   from candidates where year > 2002;
    
#5.	Show candidates whose names contain 'John'.
	select name from candidates where name = 'John';
    
#6.	Retrieve candidates from their final year.
	select name from candidates where year = 2025; 
    
#7.	List candidates from 'XYZ College'.
	select name from candidates where college = 'XYZ College';
    
#8.	Find candidates with phone numbers starting with '12345678'.
	select name ,phone from candidates where phone  like  '12345678%';

#9.	Show candidates not from 'Houston'.
    select name   from candidates where city not in('Houston');

#10.	Retrieve candidates with fees between 1500.00 and 1600.00.
		select name  from candidates where fees between 1500.00 and 1600.00;

#11.	Find candidates who joined after the year 2024.
		select name   from candidates where year > 2024;

#14.	Retrieve candidates from colleges that start with 'P'.
		select name , college  from candidates where college  like  'P%';

#15.	Find candidates with phone numbers of exactly 10 digits.
		select name , phone from candidates where phone  like  '__________';

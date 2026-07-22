#1. Perform the following tasks using GROUP BY and HAVING clauses.
 create database db_college;
 use db_college;
 
 
 
 CREATE TABLE candidates
(
 id INT PRIMARY key auto_increment,
 name VARCHAR(100),
college VARCHAR(100),
 phone VARCHAR(15),
city VARCHAR(50),
 department VARCHAR(50),
fees DECIMAL(10, 2),
 year INT,
dob DATE);
INSERT INTO candidates (name, college, phone, city, department,
fees, year, dob) VALUES
('Alice Johnson', 'ABC University', '1234567890', 'New York',
'Computer Science', 1500.00, 2025, '2003-05-15'),
('Bob Smith', 'XYZ College', '1234567891', 'Los Angeles',
'Mechanical Engineering', 1600.00, 2025, '2002-08-22'),
('Charlie Brown', 'LMN Institute', '1234567892', 'Chicago',
'Electrical Engineering', 1550.00, 2025, '2003-01-10'),
('Diana Prince', 'PQR University', '1234567893', 'Houston', 'Civil
Engineering', 1620.00, 2024, '2002-12-30'),
('Ethan Hunt', 'STU College', '1234567894', 'Phoenix', 'Information
Technology', 1580.00, 2025, '2003-03-25'),
('Fiona Apple', 'GHI University', '1234567895', 'Philadelphia',
'Biotechnology', 1650.00, 2024, '2002-09-18'),
('George Clooney', 'JKL Institute', '1234567896', 'San Antonio',
'Physics', 1500.00, 2025, '2003-07-07'),
('Hannah Montana', 'MNO College', '1234567897', 'San Diego',
'Mathematics', 1525.00, 2024, '2002-11-11'),
('Ian Malcolm', 'RST University', '1234567898', 'Dallas',
'Chemistry', 1575.00, 2025, '2003-04-04'),
('Julia Roberts', 'UVW College', '1234567899', 'San Jose',
'Economics', 1610.00, 2024, '2002-06-14'),
('Kevin Spacey', 'XYZ University', '1234567800', 'Austin', 'Business
Administration', 1590.00, 2025, '2003-02-20'),
('Laura Croft', 'ABC Institute', '1234567801', 'Jacksonville',
'Graphic Design', 1540.00, 2024, '2002-10-30'),
('Ursula K. Le Guin', 'DEF Institute', '1234567810', 'Milwaukee',
'Literature Studies', 1550.00, 2025, '2003-04-11'),
('Victor Hugo', 'GHI University', '1234567811', 'Memphis', 'History
Studies', 1620.00, 2024, '2002-09-29'),
('Walt Disney', 'JKL College', '1234567812', 'Baltimore', 'Animation
Studies', 1515.00, 2025, '2003-03-10'),
('Xena Warrior Princess', 'MNO Institute', '1234567813', 'Colorado
Springs', 'Martial Arts Studies', 1580.00, 2024, '2002-11-23'),
('Yoda Jedi Master', 'RST University', '1234567814', 'Albuquerque',
'Philosophy Studies', 1640.00, 2025, '2003-02-14'),
('Zoe Saldana', 'UVW College', '1234567815', 'Tucson', 'Dance
Studies', 1560.00, 2024, '2002-10-05'),
('Aaron Paul', 'XYZ Institute', '1234567816', 'Fresno', 'Psychology
Studies', 1530.00, 2025, '2003-07-17'),
('Bella Swan', 'ABC University', '1234567817', 'Sacramento',
'Biochemistry Studies', 1615.00, 2024, '2002-12-24'),
('Chris Hemsworth', 'DEF College', '1234567818', 'Kansas City',
'Astrophysics Studies', 1599.99, 2025, '2003-01-01'),
('Daisy Ridley', 'GHI Institute', '1234567819', 'Long Beach',
'Environmental Science Studies', 1549.50, 2024, '2002-04-16'),
('Elijah Wood', 'JKL University', '1234567820', 'Virginia Beach',
'Creative Writing Studies', 1501.75, 2025, '2003-08-19'),
('Freddie Mercury', 'MNO College', '1234567821', 'Atlanta',
'Sociology Studies', 1637.30, 2024, '2002-11-28'),
('Gandalf the Grey', 'RST Institute', '1234567822', 'Colorado
Springs', 'Theology Studies', 1566.80, 2025, '2003-02-20'),
('Olivia Benson', 'ABC University', '1234567830', 'New York',
'Criminal Justice', 1450.00, 2025, '2003-01-15'),
('Peter Parker', 'XYZ College', '1234567831', 'Los Angeles',
'Photography', 1580.00, 2025, '2002-07-20'),
('Quinn Fabray', 'LMN Institute', '1234567832', 'Chicago', 'Theater
Arts', 1500.00, 2024, '2002-10-25'),
('Rick Grimes', 'PQR University', '1234567833', 'Houston',
'Emergency Management', 1600.00, 2025, '2003-04-12'),
('Samantha Carter', 'STU College', '1234567834', 'Phoenix',
'Astrophysics', 1650.00, 2024, '2002-05-30'),
('Tony Stark', 'GHI University', '1234567835', 'Philadelphia',
'Engineering Management', 1700.00, 2025, '2003-06-15'),
('Uma Thurman', 'JKL Institute', '1234567836', 'San Antonio', 'Film
Studies', 1550.00, 2024, '2002-09-10');

#Questions using the GROUP BY clause:
#1. Find the number of candidates per year
	select year, count(*) from candidates group by year ;
    
# Show total fees per department.
	select department, sum(fees) from candidates group by department; 

# Retrieve average fees paid by candidates from each city.
	select city, avg(fees) from candidates group by city ;

# Find the number of candidates per college.
	select college, count(*) from candidates group by college ;

# Show the minimum fees paid by candidates from each department.
	select department, min(fees) from candidates group by department; 

#Questions using the HAVING clause:
# List cities with fewer than 3 candidates.

#2. Show colleges with total fees over 5000.00.
	 select college, sum(fees) from candidates group by college having sum(fees) > 5000; 

#3. Retrieve departments with an average fee below 1600.00.
	 select department , avg(fees) from candidates group by department having avg(fees) < 1600; 

#4. Find years with more than 5 candidates.
	 select year ,count(*)  from candidates group by year having count(*) > 5  ;

#5. Show colleges where the maximum fee is less than 1650.00
	 select college, max(fees) from candidates group by college having max(fees) < 1650; 

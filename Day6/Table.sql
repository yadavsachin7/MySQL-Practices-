### class practice task 
use db_day4;
#select total number of employee from each city.
select city ,count(emp_name) from employee group by city;

#select max and min salary from each city.
select city , max(salary),min(salary) from employee group by city;

#select min and max age of male and female.
select gender , max(age),min(age) from employee group by gender; 

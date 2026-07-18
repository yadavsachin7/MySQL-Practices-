SQL Practice Notes
1. Employee Table
Stores employee information: emp_id, emp_name, department, salary, joining_date,
gender, age, city.
Important Queries
• SELECT * FROM Employee; → Display all records.
• SELECT emp_name, salary FROM Employee; → Selected columns.
• WHERE department='IT' → Filter rows.
• WHERE salary > 50000 → Salary filter.
• LIKE 'A%' → Names starting with A.
• BETWEEN 25 AND 30 → Age range.
• ORDER BY salary DESC → Highest salary first.
• COUNT(*) → Total employees.
• AVG(salary), MAX(salary), MIN(salary) → Aggregate functions.
• GROUP BY department → Group department records.
• HAVING AVG(salary)>50000 → Filter grouped data.
2. Candidates Table
Stores candidate details: name, college, phone, city, department, fees, year, dob.
Important Queries
• WHERE city='New York' → Candidates from New York.
• WHERE department='Electrical Engineering' → Specific department.
• WHERE fees<1600 → Fees filter.
• WHERE year=2025 → Final year candidates.
• LIKE '12345678%' → Phone starts with digits.
• NOT IN('Houston') → Exclude city.
• BETWEEN 1500 AND 1600 → Fee range.
Interview Quick Notes
• WHERE: Filters rows.
• ORDER BY: Sorts records.
• GROUP BY: Creates groups.
• HAVING: Filters groups.
• COUNT, SUM, AVG, MIN, MAX: Aggregate functions.
• LIKE: Pattern matching.
• BETWEEN: Range search.
• IN / NOT IN: Multiple value filtering.
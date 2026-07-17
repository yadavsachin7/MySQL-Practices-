# SQL Day 3 Notes

## Constraints

-   PRIMARY KEY: Unique + Not NULL
-   AUTO_INCREMENT: Automatic ID generation
-   NOT NULL: Mandatory value
-   UNIQUE: No duplicate values
-   DEFAULT: Default value if omitted
-   CHECK: Validates condition

### Example

``` sql
salary INT DEFAULT 10000 CHECK(salary>=10000);
```

## Tables Practiced

-   tbl_employee
-   tbl_studentsTable
-   tbl_booktable
-   tbl_employees
-   tbl_orders
-   tbl_products

## Commands Learned

-   CREATE DATABASE
-   CREATE TABLE
-   INSERT
-   SELECT
-   WHERE

## Operators

-   =

-   

-   \<

-   =

-   \<=

-   BETWEEN

-   IN

-   NOT IN

-   AND

-   OR

## Query Practice

### Students

-   Display columns
-   Age filtering
-   Grade filtering

### Books

-   Equal price
-   Less than
-   BETWEEN
-   NOT IN

### Employees

-   Salary conditions
-   Department conditions

### Orders

-   Date filtering
-   Before / After / Between

### Products

-   Price filters
-   Category filters

## Interview Notes

-   BETWEEN includes both values.
-   AUTO_INCREMENT columns are omitted in INSERT.
-   PRIMARY KEY cannot be NULL or duplicate.
-   UNIQUE prevents duplicates.
-   SELECT specific columns instead of \* whenever possible.


## Author 
Sachin Yadav  
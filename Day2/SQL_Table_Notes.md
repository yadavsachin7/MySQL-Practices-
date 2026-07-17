# SQL Table Creation Notes

## Purpose

These 20 tables are **practice tables** to learn SQL `CREATE TABLE`,
data types, and `INSERT`.

## Common Syntax

``` sql
CREATE TABLE table_name (
    column_name datatype,
    ...
);
```

## Data Types Used

  Data Type      Use
  -------------- -----------------------------------
  INT            Integer values (IDs, Age, Salary)
  SMALLINT       Small numeric values
  BIGINT         Large numbers (Phone, Balance) 
  VARCHAR(n)     Short text with max length
  TEXT           Long text
  DATE           Date only
  TIME           Time only
  DECIMAL(p,s)   Decimal numbers
  BOOLEAN        TRUE/FALSE
  ENUM           Fixed values (Male/Female)

## Tables Summary

  -----------------------------------------------------------------------
  Table                   Purpose                 Main Columns
  ----------------------- ----------------------- -----------------------
  tbl_Hospital            Hospital details        HospitalID,
                                                  HospitalName, City,
                                                  TotalBed

  tbl_Doctor              Doctor information      DoctorID, DoctorName,
                                                  Specialization

  tbl_Patients            Patient records         PatientID, PatientName,
                                                  Age, Gender

  tbl_Movies              Movie information       MovieName, Director,
                                                  ReleaseDate

  tbl_Libraries           Library records         LibraryName, City,
                                                  TotalBook

  tbl_Vehicles            Vehicle details         Brand, ModelYear, Price

  tbl_Airlines            Airline details         AirlineName, Country,
                                                  TotalFlight

  tbl_Flights             Flight schedule         Source, Destination,
                                                  DepartureTime

  tbl_School              School information      SchoolName,
                                                  PrincipalName

  tbl_Exams               Exam details            ExamName, Subject,
                                                  TotalMarks

  tbl_Departments         Department details      DepartmentName, Budget

  tbl_Sellers             Seller information      SellerName, Email, City

  tbl_Invoices            Invoice records         CustomerName, Amount

  tbl_Trainers            Trainer details         TrainerName, Experience

  tbl_Projects            Project details         ProjectName,
                                                  ClientName, Budget

  tbl_Restaurants         Restaurant details      RestaurantsName,
                                                  Location

  tbl_Orders              Customer orders         ProductName, Quantity

  tbl_BankAccounts        Bank account details    AccountHolder, Balance

  tbl_MobilePhones        Mobile specifications   Brand, RAM, Storage

  tbl_Events              Event details           EventName, Venue,
                                                  TicketPrice
  -----------------------------------------------------------------------

## Insert Syntax

``` sql
INSERT INTO table_name
VALUES(value1, value2, ...);
```

Example:

``` sql
INSERT INTO tbl_Airlines
VALUES (101,'Indigo','India',10);
```

## Things to Improve

-   Add `PRIMARY KEY` to ID columns.
-   Use `AUTO_INCREMENT` for IDs.
-   Add `NOT NULL` where required.
-   

## Learning Order

1.  CREATE DATABASE
2.  CREATE TABLE
3.  INSERT
4.  SELECT
5.  WHERE
6.  UPDATE
7.  DELETE
8.  ORDER BY
9.  GROUP BY
10. JOINS
11. CONSTRAINTS
12. INDEXES

Keep these tables for practicing all SQL queries.

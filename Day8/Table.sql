 CREATE TABLE tbl_customers (
 CustomerID INT PRIMARY KEY,
 CustomerName VARCHAR(50),
 City VARCHAR(30),
 Phone VARCHAR(15)
);

#Task 2: Create the Child Table

 CREATE TABLE tbl_orders (
 OrderID INT PRIMARY KEY,
 CustomerID INT,
 ProductName VARCHAR(50),
 Quantity INT,
 Price DECIMAL(10,2),
 OrderDate DATE,
 FOREIGN KEY (CustomerID)
 REFERENCES tbl_customers(CustomerID)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

#Task 3: Insert Records into Customers Table

INSERT INTO tbl_customers VALUES
(101,'Rahul Sharma','Lucknow','9876543210'),
(102,'Priya Singh','Delhi','9876543211'),
(103,'Amit Verma','Kanpur','9876543212'),
(104,'Neha Gupta','Noida','9876543213'),
(105,'Rohan Mishra','Agra','9876543214'),
(106,'Anjali Kapoor','Jaipur','9876543215');

#Task 4: Insert Records into Orders Table

INSERT INTO tbl_orders VALUES
(1001,101,'Laptop',1,55000,'2026-07-01'),
(1002,101,'Mouse',2,800,'2026-07-02'),
(1003,102,'Keyboard',1,1500,'2026-07-03'),
(1004,103,'Monitor',1,12000,'2026-07-05'),
(1005,103,'Printer',1,9000,'2026-07-06'),
(1006,105,'Headphones',2,2500,'2026-07-08');




#Practice Questions
#A. Basic Retrieval
#1. Display all records from the Customers table.
	select * from tbl_customers ;
    
#2. Display all records from the Orders table.
	select * from tbl_orders ;

#3. Display only Customer Name and City.
	select CustomerName , City from tbl_customers ; 
#4. Display Product Name and Price.
	select ProductName , Price from tbl_orders ;

#5. Display all orders placed after 2026-07-03.
	select * from tbl_orders where OrderDate > 2026-07-03  ;

#B. INNER JOIN
#1. Display Customer Name and Product Name.
	select CustomerName , ProductName
    from tbl_customers 
    inner join tbl_orders 
    on tbl_customers.CustomerID = tbl_orders.CustomerID;
	
#2. Display Customer Name, City and Order Date.
	select CustomerName  , City , OrderDate
    from tbl_customers 
    inner join tbl_orders
    on tbl_customers.CustomerID = tbl_orders.CustomerID;
    
#3. Display Customer Name, Product Name and Price.
	select CustomerName ,ProductName,Price
    from tbl_customers 
    inner join tbl_orders
    on tbl_customers.CustomerID = tbl_orders.CustomerID;

#4. Display Customer Phone Number with Product Name.
	select Phone ,   ProductName
    from tbl_customers 
    inner join tbl_orders
    on tbl_customers.CustomerID = tbl_orders.CustomerID;
#5. Display all customers who have placed orders.
	select *
    from tbl_customers 
    inner join tbl_orders
    on tbl_customers.CustomerID = tbl_orders.CustomerID;
    
#C. LEFT JOIN # return all records from first table and only matched records from 2nd table 
#1. Display all customers along with their orders.
	select * from tbl_customers left join tbl_orders on tbl_customers.CustomerID = tbl_orders.CustomerID;
    
#2. Find customers who have not placed any order.
#select CustomerName,ProductName from tbl_customers left join tbl_orders on tbl_customers.CustomerID = tbl_orders.CustomerID 
    #where tbl_customers.CustomerID != tbl_orders.CustomerID;
#3. Display Customer Name and Product Name (if available).
	select CustomerName,ProductName from tbl_customers left join tbl_orders on tbl_customers.CustomerID = tbl_orders.CustomerID ;

#4. Display all customers even if they have no orders.
#	select * from tbl_customers left join tbl_orders on tbl_customers.CustomerID = tbl_orders.CustomerID ;

#D. RIGHT JOIN
#1. Display all orders with customer details.
	select * from tbl_customers right join tbl_orders on tbl_customers.CustomerID = tbl_orders.CustomerID ;

#2. Display every order even if customer information is unavailable.
	#select * from tbl_customers right join tbl_orders on tbl_customers.CustomerID = tbl_orders.CustomerID ;

#E. Filtering with JOIN
#1. Display orders placed by customers from Lucknow.
	select * from tbl_customers
    inner join tbl_orders 
    on tbl_customers.CustomerID = tbl_orders.CustomerID 
    where tbl_customers.City = 'Lucknow';

#2. Display customers who purchased a Laptop.
    select * from tbl_customers
    inner join tbl_orders 
    on tbl_customers.CustomerID = tbl_orders.CustomerID 
    where tbl_orders.ProductName = 'Laptop';
    

#3. Display products costing more than ₹5000 with customer names.
	select CustomerName,Price  from tbl_customers
    inner join tbl_orders 
    on tbl_customers.CustomerID = tbl_orders.CustomerID 
    where tbl_orders.Price > 5000; 
#4. Display customers whose names start with R along with their orders.
	select CustomerName 
    from tbl_customers 
    left join tbl_orders 
    on tbl_customers.CustomerID = tbl_orders.CustomerID where CustomerName like 'R%';
    
#5. Display orders placed between 2026-07-02 and 2026-07-06.
	select *  
    from tbl_orders 
    left join tbl_customers
    on   tbl_orders.CustomerID = tbl_customers.CustomerID where OrderDate between 2026-07-02 and 2026-07-06;
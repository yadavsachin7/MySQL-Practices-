create database db_ecommerce;
use db_ecommerce;

#. Create the following tables with Primary Key (PK) and Foreign Key (FK):
# Categories(CategoryID PK, CategoryName)
create table  tbl_categories(
CategoryId int primary key  ,
CategoryName varchar(100)
);

insert into tbl_categories
values
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Kitchen'),
(5, 'Sports');

# Products(ProductID PK, CategoryID FK, ProductName, Price, Stock)
create table  tbl_products(
ProductId int primary key  ,
ProductName varchar(100) not null,
Price int  not null,
Stock int,
CategoryID int not null,

	foreign key(CategoryId) 
		references tbl_categories(CategoryId)
);

insert into tbl_products
values
(101, 'Samsung Galaxy M35', 18999, 25, 1),
(102, 'Men Cotton T-Shirt', 799, 60, 2),
(103, 'Atomic Habits', 499, 40, 3),
(104, 'Non-Stick Fry Pan', 1299, 18, 4),
(105, 'Cricket Bat', 2499, 12, 5);
# Customers(CustomerID PK, Name, Email, Phone)
Create Table tbl_customers (
    CustomerID int primary Key,
    Name varchar(100) Not Null,
    Email varchar(100) Unique,
    Phone bigint
);

insert into tbl_customers (CustomerID, Name, Email, Phone)
values
(1001, 'Rahul', 'rahul@gmail.com', 9876543210),
(1002, 'Priya', 'priya@gmail.com', 9123456789),
(1003, 'Amit', 'amit@gmail.com', 9988776655),
(1004, 'Neha', 'neha@gmail.com', 9012345678),
(1005, 'Rohan', 'rohan@gmail.com', 9098765432);
 # Orders(OrderID PK, CustomerID FK, OrderDate, TotalAmount, Status)
 create table tbl_orders (
    OrderID int primary key,
    CustomerID int not null,
    OrderDate date not null,
    TotalAmount decimal(10,2) not null,
    Status varchar(20) not null,

    foreign key (CustomerID)
        references tbl_customers(CustomerID)
);

insert into tbl_orders
values
(5001, 1001, '2026-07-10', 18999.00, 'Delivered'),
(5002, 1002, '2026-07-12', 1299.00, 'Shipped'),
(5003, 1003, '2026-07-15', 499.00, 'Delivered'),
(5004, 1004, '2026-07-18', 3298.00, 'Processing'),
(5005, 1005, '2026-07-20', 799.00, 'Pending');
# OrderItems(OrderItemID PK, OrderID FK, ProductID FK, Quantity, Price)
	create table tbl_orderItems (
    OrderItemID int primary key,
    OrderID int not null,
    ProductID int not null,
    Quantity int not null,
    Price decimal(10,2) not null,

    foreign key (OrderID)
        references tbl_orders(OrderID),

    foreign key (ProductID)
        references tbl_products(ProductID)
);

insert into tbl_orderItems
values
(7001, 5001, 101, 1, 18999.00),
(7002, 5002, 104, 1, 1299.00),
(7003, 5003, 103, 1, 499.00),
(7004, 5004, 105, 1, 2499.00),
(7005, 5005, 102, 1, 799.00);

# ProductImages(ImageID PK, ProductID FK, ImageURL)
	create table tbl_productimages (
    ImageID int primary key,
    ProductID int not null,
    ImageURL varchar(255) not null,

    foreign key (ProductID)
        references tbl_products(ProductID)
);
insert into tbl_productimages
values
(8001, 101, 'https://example.com/images/samsung-galaxy-m35.jpg'),
(8002, 102, 'https://example.com/images/men-cotton-tshirt.jpg'),
(8003, 103, 'https://example.com/images/atomic-habits-book.jpg'),
(8004, 104, 'https://example.com/images/non-stick-fry-pan.jpg'),
(8005, 105, 'https://example.com/images/cricket-bat.jpg');

# Reviews(ReviewID PK, ProductID FK, CustomerID FK, Rating, Comment)
	create table tbl_reviews (
    ReviewID int primary key,
    ProductID int not null,
    CustomerID int not null,
    Rating int not null,
    Comment varchar(500),

	foreign key(ProductID) 
		references tbl_products(ProductID),
        
	foreign key(CustomerId) 
		references tbl_customers(CustomerId)
);

insert into tbl_reviews
values
(9001, 101, 1001, 5, 'Excellent phone with great battery life'),
(9002, 102, 1002, 4, 'Good quality T-shirt'),
(9003, 103, 1003, 5, 'Very inspiring book. Worth reading.'),
(9004, 104, 1004, 4, 'The pan heats evenly and is easy to clean.'),
(9005, 105, 1005, 5, 'Strong bat with a good grip. Perfect for practice matches.');

#Conlusion
#1. Created all tables using appropriate constraints.
#2. Inserted  5 records into each table.
#3. Maintained parent-child relationships using foreign keys.

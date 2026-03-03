
CREATE DATABASE data_digger;

USE data_digger;

-- Creating Customers Table

CREATE TABLE
Customers (
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100) NOT NULL,
Email VARCHAR(100) UNIQUE,
Address TEXT
);

-- Inserting 5 sample customers

INSERT INTO
Customers (Name, Email, Address)
VALUES
("kunj" , "kunjmistry@gmail.com" , "amalsad"),
("jay" , "jay@gmail.com" ,  "navsari"),
("ishan" , "ishan@gmail.com" , "bilimora"),
("urvik" , "urvik@gmail.com" , "surat"),
("lay" , "lay@gmail.com" , "navsari");

-- Retrieving all customer details

SELECT*FROM Customers;

-- Updating a customer's address 

UPDATE Customers
SET Address = 'Adajan'
WHERE CustomerID = 2;

-- Deleting a customer whose name is 'lay'

DELETE FROM Customers 
WHERE CustomerID = 5;

-- Displaying all customers whose name is 'lay' 

SELECT * FROM Customers
WHERE Name = 'lay';


--------------------------------------------------------------------------------------------------------



-- Creating Orders Table

CREATE TABLE Orders (
OrderID INT PRIMARY KEY AUTO_INCREMENT,
CustomerID INT,
OrderDate DATE,
TotalAmount DECIMAL(10, 2),
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
);

-- Inserting 5 sample orders

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES
    (2, '2026-02-01', 150.00),
    (3, '2026-02-10', 300.50),
    (4, '2026-02-15', 450.75),
    (1, '2026-02-20', 200.25),
    (2, '2026-02-22', 175.00);

-- Retrieving all orders made by a specific customer 

SELECT * FROM Orders
WHERE CustomerID = 2;

-- Updating an order's total amount 

UPDATE Orders
SET TotalAmount = 175.00
WHERE OrderID = 1;

-- Deleting an order using its OrderID 

DELETE FROM Orders
WHERE OrderID = 2;

-- Retrieving orders placed in the last 30 days

SELECT * FROM Orders
WHERE OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

-- Retrieving the highest, lowest, and average order amount

SELECT 
MAX(TotalAmount) as Highest,
MIN(TotalAmount) as Lowest,
AVG(TotalAmount) as Average
FROM Orders;


--------------------------------------------------------------------------------------------------------



-- Creating Products Table

CREATE TABLE Products (
ProductID INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(100) NOT NULL,
Price DECIMAL(10, 2),
Stock INT
);

-- Inserting 5 sample products

INSERT INTO Products (ProductName, Price, Stock)
VALUES
('Laptop', 1200.00, 10),
('Mouse', 25.00, 50),
('Keyboard', 80.00, 30),
('Monitor', 300.00, 15),
('Headphones', 90.00, 20);

-- Retrieving all products sorted by price in descending order

SELECT * FROM Products
ORDER BY Price DESC;

-- Updating the price of a specific product 

UPDATE Products
SET Price = 30.00
WHERE ProductID = 2;

-- Retrieving products whose price is between ₹500 and ₹2000

SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;

-- Retrieving the most expensive and cheapest product

SELECT
MAX(Price) as MostExpensive,
MIN(Price) as Cheapest
FROM Products;


-------------------------------------------------------------------------------------------------------



-- Creating OrderDetails Table

CREATE TABLE OrderDetails (
OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
OrderID INT,
ProductID INT,
Quantity INT,
SubTotal DECIMAL(10, 2),
FOREIGN KEY (OrderID) REFERENCES Orders (OrderID),
FOREIGN KEY (ProductID) REFERENCES Products (ProductID)
);

-- Inserting 5 sample records into OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal)
VALUES
(6, 1, 1, 175.00),
(7, 2, 2, 60.00),
(8, 3, 1, 80.00),
(9, 4, 1, 300.00),
(10, 2, 1, 90.00);

-- Retrieving all order details for a specific order 

SELECT * FROM OrderDetails
WHERE OrderID = 6;

-- Calculating total revenue generated from all orders

SELECT SUM(SubTotal) as TotalRevenue
FROM OrderDetails;

-- Retrieving the top 3 most ordered products

SELECT ProductID, SUM(Quantity) as TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;

-- Counting how many times a specific product has been sold 

SELECT COUNT(*) as SalesCount
FROM OrderDetails
WHERE ProductID = 1;
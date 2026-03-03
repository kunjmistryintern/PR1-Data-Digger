# 📊 PR1 - Data Digger – SQL E-Commerce Database Project
 
 Name : Kunj Mistry
 
 GR ID : 12078
 
 Batch : RW6
 
 Date : 03/03/26


## 📌 Project Overview
**Data Digger** is a practical SQL project designed to provide hands-on experience in managing a relational database using MySQL.

This project simulates an **E-Commerce Store Database System** and focuses on performing CRUD operations, aggregate functions, filtering, sorting, and analytical queries.

It helps in understanding:
- Database design
- Table relationships
- SQL query execution
- Data manipulation and analysis

---

## 🎯 Objective
To design and manage a structured relational database for an E-Commerce platform and perform real-world SQL operations such as:
- INSERT
- SELECT
- UPDATE
- DELETE
- Aggregate Functions
- Filtering and Sorting

---

## 🗂️ Database Structure

The project consists of **4 relational tables**:

### 1️⃣ Customers Table
| Field Name   | Description |
|-------------|------------|
| CustomerID  | Unique ID for customer |
| Name        | Customer name |
| Email       | Customer email |
| Address     | Customer address |

---

### 2️⃣ Orders Table
| Field Name   | Description |
|-------------|------------|
| OrderID     | Unique order ID |
| CustomerID  | References Customers |
| OrderDate   | Date of order |
| TotalAmount | Total order value |

---

### 3️⃣ Products Table
| Field Name   | Description |
|-------------|------------|
| ProductID   | Unique product ID |
| ProductName | Product name |
| Price       | Product price |
| Stock       | Available quantity |

---

### 4️⃣ OrderDetails Table
| Field Name     | Description |
|---------------|------------|
| OrderDetailID | Unique order detail ID |
| OrderID       | References Orders |
| ProductID     | References Products |
| Quantity      | Quantity ordered |
| SubTotal      | Total price per product |

---

## 🔗 Table Relationships

- Customers → Orders (One-to-Many)
- Orders → OrderDetails (One-to-Many)
- Products → OrderDetails (One-to-Many)

This ensures proper relational database structure using foreign keys.

---

## 🛠️ Features & SQL Operations Performed

### ✅ Customers
- Insert sample customers
- Retrieve customer details
- Update address
- Delete customer
- Filter customers by name

### ✅ Orders
- Insert sample orders
- Retrieve orders by specific customer
- Update order amount
- Delete order
- Retrieve last 30 days orders
- Calculate highest, lowest & average order value

### ✅ Products
- Insert products
- Sort products by price (DESC)
- Update product price
- Delete out-of-stock products
- Retrieve products within price range
- Find most expensive & cheapest product

### ✅ OrderDetails
- Insert sample records
- Retrieve order details
- Calculate total revenue using SUM()
- Find top 3 most ordered products
- Count product sales using COUNT()

---

## 📈 SQL Concepts Used

- CRUD Operations
- WHERE Clause
- ORDER BY
- GROUP BY
- Aggregate Functions (SUM, AVG, MAX, MIN, COUNT)
- BETWEEN
- JOIN Operations
- Date Functions
- Foreign Keys

---

## 💻 Technologies Used

- MySQL
- SQL
- Relational Database Concepts

---

## 📚 Learning Outcomes

After completing this project, I gained understanding of:
- Designing relational databases
- Writing optimized SQL queries
- Using aggregate functions for analysis
- Managing table relationships
- Performing real-world data operations

---

## 👨‍💻 Author

**Kunj Mistry**  
SQL & Data Enthusiast  
Industrial Training Project

---

⭐ If you found this project helpful, feel free to give it a star!

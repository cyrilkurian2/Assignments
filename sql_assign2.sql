-- For this assignment, assume you have a database with the following table:
-- CREATE TABLE Employees (
--     EmployeeID INT PRIMARY KEY,
--     FirstName VARCHAR(50),
--     LastName VARCHAR(50),
--     Department VARCHAR(50),
--     Salary DECIMAL(10, 2),
--     HireDate DATE
-- );

CREATE DATABASE Test;

USE Test;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate) VALUES
(1, 'John', 'Doe', 'Sales', 50000.00, '2022-01-15'),
(2, 'Jane', 'Smith', 'Marketing', 60000.00, '2023-02-20'),
(3, 'Michael', 'Johnson', 'HR', 55000.00, '2021-03-10'),
(4, 'Emily', 'Davis', 'Finance', 70000.00, '2020-04-25'),
(5, 'Daniel', 'Wilson', 'IT', 75000.00, '2019-05-30'),
(6, 'Olivia', 'Brown', 'Sales', 48000.00, '2022-06-14'),
(7, 'James', 'Jones', 'Marketing', 62000.00, '2023-07-19'),
(8, 'Sophia', 'Garcia', 'HR', 53000.00, '2021-08-22'),
(9, 'Liam', 'Martinez', 'Finance', 80000.00, '2020-09-05'),
(10, 'Isabella', 'Hernandez', 'IT', 72000.00, '2019-10-12');


-- Create a table students and insert names in malayalam
CREATE TABLE Students (Stdid int, Stdname varchar(30));
Alter Table Students Alter column Stdname nvarchar(30);

INSERT INTO Students values (101, 'അജിത്');
INSERT INTO Students values (102, 'ബിജു');
INSERT INTO Students values (103, 'സ്നേഹ');
INSERT INTO Students values (104, 'ശ്രുതി');

-- Retrieve all employees who work in Sales, Marketing, or IT departments.
SELECT * FROM Employees WHERE Department IN ('Sales','Marketing','IT') 


-- Find all employees with salaries ranging from $50,000 to $75,000 (inclusive).
SELECT * FROM Employees WHERE Salary BETWEEN 50000 AND  75000


-- List all employees whose last name begins with the letter 'S'.
SELECT * FROM Employees WHERE LastName LIKE 'S%';

-- Display all employees with exactly five letters in their first name.
SELECT * FROM Employees WHERE FirstName LIKE '_____'

-- Find employees whose last name starts with either 'B', 'R', or 'S'.
SELECT * FROM Employees WHERE LastName LIKE 'B%' OR  LastName LIKE 'R%' OR LastName LIKE 'S%';
SELECT * FROM Employees WHERE LastName LIKE '[B,R,S]%'


-- Retrieve all employees whose first name begins with any letter from 'A' through 'M'.
SELECT * FROM Employees WHERE FirstName BETWEEN 'A' AND 'M'

-- List employees whose last name doesn't start with a vowel (A, E, I, O, U).
SELECT * FROM Employees WHERE LastName LIKE '[^A,E,I,O,U]%'

-- Identify employees earning more than $80,000 annually. 
SELECT * FROM Employees WHERE Salary > 80000

-- Find employees who joined the company before 2020.
SELECT * FROM Employees WHERE HireDate < '2020-01-01'
SELECT * FROM Employees WHERE HireDate < '2020'


--  List all employees not named 'John' (first name).
SELECT * FROM Employees WHERE FirstName NOT LIKE 'John'

-- Identify Marketing department employees earning $60,000 or less who were hired after June 30, 2019.
SELECT * FROM Employees WHERE Department='Marketing' AND Salary <= 60000 AND HireDate > '2021-06-30'

-- Find employees whose first name contains the letters 'an' anywhere and ends with 'e'.
SELECT * FROM Employees WHERE FirstName LIKE '%an%e'




-- For this assignment, use the following tables:
-- CREATE TABLE Sales (
--     SaleID INT PRIMARY KEY,
--     ProductID INT,
--     CustomerID INT,
--     SaleDate DATE,
--     Quantity INT,
--     UnitPrice DECIMAL(10, 2)
-- );

-- CREATE TABLE Products (
--     ProductID INT PRIMARY KEY,
--     ProductName VARCHAR(100),
--     Category VARCHAR(50)
-- );

-- CREATE TABLE Customers (
--     CustomerID INT PRIMARY KEY,
--     CustomerName VARCHAR(100),
--     City VARCHAR(50),
--     State VARCHAR(2)
-- );


INSERT INTO Products (ProductID, ProductName, Category) VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Smartphone', 'Electronics'),
(3, 'Tablet', 'Electronics'),
(4, 'Coffee Maker', 'Home Appliances'),
(5, 'Desk Chair', 'Furniture'),
(6, 'Gaming Mouse', 'Accessories'),
(7, 'Office Desk', 'Furniture'),
(8, 'Wireless Headphones', 'Electronics'),
(9, 'Printer', 'Electronics'),
(10, 'Camera', 'Photography'),
(11, 'Smartwatch', 'Electronics'),
(12, 'Air Fryer', 'Home Appliances');



INSERT INTO Customers (CustomerID, CustomerName, City,State) VALUES
(1, 'Alice Johnson', 'New York','KL'), 
(2, 'Bob Smith', 'Los Angeles','HR'),
(3, 'Charlie Brown', 'Chicago','JK'),
(4, 'Diana Prince', 'Miami','ER'),
(5, 'Ethan Hunt', 'San Francisco','PY'),
(6, 'Fiona Green', 'Houston','XC'),
(7, 'George Martin', 'Seattle','QW'),
(8, 'Hannah Baker', 'Boston','NM'),
(9, 'Ian Wright', 'Phoenix','LO'),
(10, 'Julia Roberts', 'Dallas','UC'),
(11, 'Kevin Spacey', 'Austin','ZF'),
(12, 'Laura Croft', 'Philadelphia','AS');


INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, Quantity, UnitPrice) VALUES
(1, 1, 1, '2023-01-15', 1, 1200.00),
(2, 2, 2, '2023-01-20', 2, 800.00),
(3, 3, 3, '2023-01-25', 2, 300.00),
(4, 4, 4, '2023-01-30', 1, 150.00),
(5, 5, 5, '2023-02-05', 3, 250.00),
(6, 6, 6, '2023-02-10', 1, 50.00),
(7, 7, 7, '2023-02-15', 2, 400.00),
(8, 8, 8, '2023-02-20', 2, 200.00),
(9, 9, 9, '2023-02-25', 1, 150.00),
(10, 10, 10, '2023-03-01', 1, 600.00),
(11, 11, 11, '2023-03-05', 2, 300.00),
(12, 12, 12, '2023-03-10', 1, 120.00);


-- Calculate the total sales amount for each product. Display the ProductID and total sales amount.
SELECT ProductID, SUM(Quantity * UnitPrice) AS Total_Sales FROM Sales GROUP BY ProductID

-- Find the average quantity sold per sale for each product category.
SELECT Category,AVG(Quantity) AS Average_sale FROM Products,Sales WHERE Products.ProductID = Sales.ProductID GROUP BY Category

-- List the top 5 customers by their total purchase amount. Include the CustomerID and total purchase amount.
SELECT TOP 5 Customers.CustomerID,SUM(Quantity * UnitPrice) AS Total_Purchase_amt FROM Customers,Sales WHERE Customers.CustomerID = Sales.CustomerID GROUP BY Customers.CustomerID ORDER BY Total_Purchase_amt DESC

-- Determine the number of sales made each month in the year 2023. Display the month and the count of sales.
SELECT Month(SaleDate) AS Month_number,Count(SaleID) AS Total_Sales FROM Sales WHERE Year(SaleDate) = '2023' GROUP BY Month(SaleDate)

-- Calculate the total revenue for each state, but only for states with more than $10,000 in total sales.
SELECT State, SUM(UnitPrice * Quantity) FROM Customers,Sales WHERE Customers.CustomerID = Sales.CustomerID GROUP BY State HAVING SUM(UnitPrice * Quantity) > 80000 

-- Find products that have been sold more than 100 times in total. Display the ProductID, ProductName, and the total quantity sold.
SELECT Products.ProductID,ProductName,Sum(Quantity) as Total_quantity FROM Products,Sales WHERE Products.ProductID = Sales.ProductID GROUP BY Products.ProductId,Products.ProductName HAVING Sum(Quantity) >100 

-- For each customer, find the date of their first purchase and the date of their most recent purchase.
SELECT Customers.CustomerID ,MIN(SaleDate) AS First_Purchase, MAX(SaleDate) AS Last_Purchase FROM Sales,Customers WHERE Sales.CustomerID = Customers.CustomerID GROUP BY Customers.CustomerID

-- Find the customers who have made purchases on at least 5 different dates. Display the CustomerID and the count of distinct purchase dates.
SELECT CustomerID, COUNT(DISTINCT SaleDate) AS Total_Number_Sales FROM Sales GROUP BY CustomerID HAVING COUNT(DISTINCT SaleDate) >= 5
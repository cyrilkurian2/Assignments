-- E-commerce Platform Schema

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    RegistrationDate DATE
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(200),
    Price DECIMAL(10, 2),
    CategoryID INT
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Questions

-- 1. List all products with their category names, including products without a category.
SELECT Products.ProductID, Products.ProductName, Categories.CategoryName FROM Products LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID

-- 2. Display all customers and their order history, including customers who haven't placed any orders.
SELECT cus.CustomerID, cus.CustomerName, o.OrderID, o.OrderDate, o.TotalAmount,od.ProductID,Products.ProductName,Products.Price
FROM Customers cus LEFT JOIN Orders o 
ON cus.CustomerID = o.CustomerID LEFT JOIN OrderDetails od
ON o.OrderID = od.OrderID LEFT JOIN Products 
ON od.ProductID = Products.ProductID 

-- 3. Show all categories and the products in each category, including categories without any products.
SELECT ca.CategoryID,ca.CategoryName,pr.ProductID,pr.ProductName FROM Categories ca LEFT JOIN Products pr ON ca.CategoryID = pr.CategoryID

-- 4. List all possible customer-product combinations, regardless of whether a purchase has occurred.
SELECT Customers.CustomerName, Products.ProductName FROM Customers CROSS JOIN Products

-- 5. Display all orders with customer and product information, including orders where either the customer or product information is missing.
SELECT o.OrderID, o.OrderDate, o.TotalAmount,cus.CustomerID, cus.CustomerName, od.ProductID,Products.ProductName,Products.Price
FROM Orders o LEFT JOIN Customers cus 
ON o.CustomerID = cus.CustomerID LEFT JOIN OrderDetails od
ON o.OrderID = od.OrderID LEFT JOIN Products 
ON od.ProductID = Products.ProductID

-- 6. Show all products that have never been ordered, along with their category information.
SELECT pr.ProductID,pr.ProductName,o.OrderID 
FROM Products pr LEFT JOIN OrderDetails od 
ON pr.ProductID = od.ProductID LEFT JOIN Orders o 
ON od.OrderID = o.OrderID WHERE od.OrderID IS NULL

-- 7. List all customers who have placed orders in the last week, along with the products they've purchased.
SELECT c.CustomerID,c.CustomerName,o.OrderID,o.OrderDate,p.ProductID, p.ProductName 
FROM Customers c 
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID 
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID 
LEFT JOIN Products p ON od.ProductID = p.ProductID WHERE  o.OrderDate >= DATEADD(DAY, -7, GETDATE())

-- 8. Display all categories with products priced over $100, including categories without such products.
SELECT * FROM Categories CROSS JOIN Products
-- 9. Show all orders placed before 2023 and any associated product information.
SELECT * FROM Categories LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID AND Products.Price > 100

-- 10. List all possible category-customer combinations, regardless of whether the customer has purchased a product from that category.
SELECT Categories.CategoryName,Customers.CustomerName FROM Categories CROSS JOIN Customers
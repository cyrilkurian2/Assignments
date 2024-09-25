CREATE DATABASE TEST;
USE TEST;

CREATE TABLE Employee (EmployeeID int primary key, FirstName varchar(10), LastName varchar(10), Dept varchar(10), Salary int );

INSERT INTO Employee values (101, 'Cyril','Kurian','CSE',30000);
INSERT INTO Employee values (102, 'Ajai','Bino','IT',45000);
INSERT INTO Employee values (103, 'Amal','Aji','ECE',55700);

SELECT * FROM Employee;

SELECT FirstName FROM Employee;								 
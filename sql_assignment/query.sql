CREATE DATABASE TEST;
USE TEST;

CREATE TABLE Employee (EmployeeID int primary key, FirstName varchar(10), LastName varchar(10), Dept varchar(10), Salary int );

INSERT INTO Employee values (101, 'Cyril','Kurian','CSE',30000);
INSERT INTO Employee values (102, 'Ajai','Bino','IT',45000);
INSERT INTO Employee values (103, 'Amal','Aji','ECE',55700);

SELECT * FROM Employee;

SELECT FirstName FROM Employee;								 


-- Select with a WHERE clause to filter results
SELECT * FROM Employee WHERE EmployeeID = 102

-- What is the purpose of the IDENTITY keyword in the CREATE TABLE statement?
Identity columns can be used for generating key values.
Each new value is generated based on the current seed and increment.

-- Write a SELECT statement to retrieve only the FirstName and Salary of all employees.
SELECT FirstName,Salary FROM Employee;

-- How would you modify the existing UPDATE statement to give all employees in the IT department a 10% raise
UPDATE Employee SET Salary = Salary * 1.1 WHERE Dept = 'IT';

-- Write a SELECT statement to find the highest salary in the Employees table.
SELECT MAX(Salary) FROM Employee 

-- How would you add a new column named "HireDate" of type DATE to the Employees table?
ALTER TABLE Employee ADD HireDate date;

-- Write an INSERT statement to add a new employee named "Sarah Brown" in the "Marketing" department with a salary of 72000.00.
INSERT INTO Employee values (104,'Sarah','Brown','Marketing',72000);

--  How would you modify the table to ensure that the Salary column cannot contain negative values?
ALTER TABLE Employee ADD CONSTRAINT check_salary_positive CHECK (salary >= 0);

-- How would you add a UNIQUE constraint to the Employees table to ensure that no two employees can have the same email address
ALTER TABLE Employee ADD email varchar(20);
ALTER TABLE Employee ADD CONSTRAINT unique_email UNIQUE (email);

-- Write an ALTER TABLE statement to add an "Email" column to the Employees table with a UNIQUE constraint that allows NULL values

ALTER TABLE Employee ADD email varchar(20) NULL UNIQUE;
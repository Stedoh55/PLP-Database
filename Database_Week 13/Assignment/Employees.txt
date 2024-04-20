-- Creating the table for employees
CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(45) NOT NULL,
LastName VARCHAR(45) NOT NULL,
Salary INT NOT NULL,
BonusPercentage DOUBLE);

-- Adding data to the employees table
INSERT INTO employees
(FirstName, LastName, Salary, BonusPercentage)
VALUES
('Ayoub', 'Ally', 100000, 10),
('Hassan', 'Shaban', 95000, 5),
('Amina', 'Maulid', 70000, 20),
('Jane', 'Paul', 40000, 5),
('Mariam', 'Athuman', 80000, 15),
('Baraka', 'Charles', 60000, 10),
('Dominic', 'Swai', 100000, 5),
('Solomoni', 'Issa', 70000, 15),
('Ashura', 'Said', 35000, 10),
('Leonard', 'Mfuse', 40000, 20),
('Anna', 'Boniface', 50000, 15);

SELECT * FROM Employees;

-- Total Compensation using the CASE statement
SELECT
EmployeeID, FirstName, LastName, Salary, BonusPercentage,

CASE
WHEN salary > 0 THEN (Salary + (salary * BonusPercentage * 0.01))
END TotalCompensation
FROM employees;


-- Identifying the employees with the Total compensation greater than $80000
SELECT
EmployeeID, FirstName, LastName, Salary, BonusPercentage,

CASE
WHEN salary > 0 THEN (Salary + (salary * BonusPercentage * 0.01))
END TotalCompensation
FROM employees WHERE salary > 60000;
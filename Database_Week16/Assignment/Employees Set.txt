-- Creating the EmployeesA Table
CREATE TABLE EmployeesA(
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(45),
LastName VARCHAR(45),
Salary INT);

-- Creating the EmployeesB Table
CREATE TABLE EmployeesB(
EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(45),
LastName VARCHAR(45),
Salary INT);

-- Adding data to EmployeesA Table
INSERT INTO EmployeesA
(FirstName, LastName, Salary)
VALUES
('John', 'Mathew', 5000),
('Amina', 'Hassan', 6000),
('Anna', 'James', 1000),
('Maulid', 'Sabuni', 4000),
('abdallah', 'Mbago', 3000),
('Mwanaidi', 'Mgeni', 7000),
('Petrick', 'Amani', 2500),
('James', 'Ally', 5000),
('Muna', 'Ibrahim', 2500),
('Salma', 'Jimmy', 7000);

-- Adding data to EmployeesB Table
INSERT INTO EmployeesB
(FirstName, LastName, Salary)
VALUES
('Adam', 'Mashaka', 4000),
('Amanta', 'Hossein', 8000),
('Anna', 'James', 1000),
('Melkior', 'Kiyao', 2500),
('abdallah', 'Mbago', 1000),
('Mwanaidi', 'Mgendi', 4000),
('Petrick', 'Amani', 2500),
('James', 'Ally', 5000),
('John', 'Mtani', 5000),
('Tatu', 'Chengu', 5000);

-- Selecting the Data in employeesA Table
SELECT * FROM employeesA;

-- Selecting the Data in employeesB Table
SELECT * FROM employeesB;

-- UNION to retrieve unique employees fro both tables
SELECT FirstName, Lastname
FROM employeesA

UNION

SELECT FirstName, Lastname
FROM employeesB;

-- Common Employees in both tables
SELECT FirstName, Lastname
FROM employeesA

INTERSECT

SELECT FirstName, Lastname
FROM employeesB;

-- Employees in EmployeesA but not in EmployeesB
SELECT FirstName, Lastname
FROM employeesA

EXCEPT

SELECT FirstName, Lastname
FROM employeesB;




-- Creating the EMPLOYEES table
CREATE TABLE Employees(
id INT PRIMARY KEY AUTO_INCREMENT,
Names VARCHAR(45) NOT NULL,
Departments_id INT,
Salary_id INT);

-- Filling the data
INSERT INTO Employees
(Names, Departments_id, Salary_id)
VALUES
('James Adams', 3, 2),
('Salum Abdallah' , 9, 4),
('Anna John' , 2, 3),
('Isaac Mwenda' , 4, 5),
('Aneth Emmanuel' , 5, 1),
('Hawa James' , 1, 3),
('Antony Peter' , 8, 2),
('Zawadi Gwaka' , 1, 7),
('Amana Julius' , 3, 3),
('Salahe Mwinjuma' , 5, 4),
('Maulid Mutesa' , 6, 3);

-- Selecting the inserted EMPLOYEES data
SELECT * FROM employees;

-- Creating the DEPARTMENTS TABLE
CREATE TABLE departments(
id INT NOT NULL AUTO_INCREMENT,
Category VARCHAR(45) NOT NULL);

-- Inserting data into the DEPARTMENTS TABLE
INSERT INTO departments(Category)
VALUEs
('Sales'), ('Marketing'), ('Administration'), ('Relations'), ('Human Resource'), ('Sports'), ('ICT'); 

-- Selecting the inserted DEPARTMENTS data
SELECT * FROM departments;

-- Creating the SALARY TABLE
CREATE TABLE salary(
id INT NOT NULL AUTO_INCREMENT,
scale INT NOT NULL,
Department_id INT);

-- Inserting data into the SALARY TABLE
INSERT INTO salary
(scale, Department_id)
VALUES
(10000 , 3),
(12000, 4),
(8000, 1),
(15000, 5),
(12000, 2),
(10000, 6),
(20000,7);

-- Selecting the inserted SALARY data
SELECT * FROM salary;

-- Selecting employees with their department names
SELECT
employees.id,
Names,
Department

FROM employees
INNER JOIN departments ON employees.Departments_id = departments.id;

-- Average Salary of Departments
SELECT
departments.id,
Department,
AVG(Salary) AS 'Average Salary'

FROM departments
INNER JOIN employees ON employees.Departments_id = departments.id
INNER JOIN salary ON salary.Department_id = employees.Departments_id

GROUP BY departments.id;

-- Employees with no departments
SELECT
employees.id,
Names,
COALESCE(Department, 'No department') Department,
salary

FROM employees
LEFT JOIN departments ON employees.Departments_id = departments.id
LEFT JOIN salary ON Salary.id = employees.Salary_id
WHERE Department IS NULL;







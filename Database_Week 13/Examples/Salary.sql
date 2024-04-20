-- Creating the Salary Table
CREATE TABLE salary(
first_name VARCHAR(45) PRIMARY KEY NOT NULL,
last_name VARCHAR(45) NOT NULL,
salary DOUBLE NOT NULL,
evaluation VARCHAR(45));

-- Filling the Table with the Data
INSERT INTO salary
(first_name, last_name, salary)
VALUES
('Adam', 'Fripp', '8200.00'),
('Alexander', 'Hunold', '9000.00'),
('Allena', 'Khoo', '3100.00'),
('Britney', 'Everett', '3900.00'),
('Bruce', 'Ernst', '6000.00'),
('Charles', 'Johnson', '6200.00'),
('Daniel', 'Faviet', '9000.00'),
('David', 'Austin', '4800.00'),
('Den', 'Raphaely', '11000.00'),
('Diana', 'Lorentz', '4200.00'),
('Guy', 'Himuro', '2600.00'),
('Hermann', 'Baer', '10000.00'),
('Irene', 'Mikklineni', '2700.00');

-- Selecting the Data using Boolean Conditions to evaluate Salary Amount
SELECT
first_name, last_name, salary,
CASE
WHEN salary < 3000 THEN 'Low'
WHEN salary >= 3000 AND salary <= 5000 THEN 'Average'
WHEN salary > 5000 THEN 'High'
END evaluation
FROM salary;

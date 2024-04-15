-- Creating the Grades table
CREATE TABLE grades(
StudentID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(45) NOT NULL,
LastName VARCHAR(45) NOT NULL,
Age INT NOT NULL,
Grade VARCHAR(45) NOT NULL);

-- Inserting data into the Students gradebook
INSERT INTO grades
(FirstName, LastName, Age, Grade)
VALUES
('Amanda', 'Charles', 23, 'A'),
('Mudathir', 'Yahya', 21, 'C'),
('Samwel', 'Johnson', 26, 'B'),
('Anna', 'James', 25, 'A'),
('Zawadi', 'Shaban', 24, 'B'),
('Pius', 'Mwenda', 24, 'D'),
('Monicca', 'Aloyce', 26, 'A'),
('Janeth', 'Abraham', 24, 'B'),
('Julius', 'Kisoma', 25, 'C'),
('Henry', 'Nickson', 27, 'A'),
('Anastazia', 'Jamal', 28, 'B'),
('Ester', 'Andrew', 24, 'A'),
('Kisawa', 'Bahati', 23, 'C'),
('Saimoni', 'Jumanne', 27, 'B'),
('Benjamin', 'Salehe', 26, 'A'),
('Nasra', 'Abraham', 28, 'B'),
('Mwanaiddi', 'Hassan', 25, 'C');

-- Retrieving all students alder than 25 years
SELECT * FROM grades
WHERE Age > 25;

-- Sudents with grades A and B
SELECT * FROM grades
WHERE Grade = 'A' OR Grade = 'B';

-- Distinct age values of Age among Students
SELECT DISTINCT Age FROM grades;

-- Creating the Students Table in Database
CREATE TABLE Students(
StudentID INT NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Age INT NOT NULL,
Major VARCHAR(500) NOT NULL);

-- Inserting the records into the database
INSERT INTO students
(StudentID, FirstName, LastName, Age, Major)
VALUES
(210017, 'Abel', 'Mathew', 20,	'Mathematics'),
(210015,'Anna',	'Mathias' ,	21,	'French'),
(210014, 'Stephen',	'Paul',	21,	'History'),
(210013, 'James', 'Andrew',	22,	'English'),
(210010, 'Jackson',	'Samwel', 19, 'Civics');

-- Adding the GPA column tp the students table
ALTER TABLE students
ADD COLUMN GPA REAL NOT NULL;

-- Inserting the data to the GPA Column
INSERT INTO students
(GPA)
VALUES
(3.2), (3.8), (2.7), (4.1), (3,6);

-- Renaming a Table from Students to Enrolled Students
RENAME  TABLE students TO EnrolledStudents;

-- Creating the Courses Table
CREATE TABLE Courses(
CourseID  INT NOT NULL AUTO_INCREMENT,
CourseName VARCHAR(100) NOT NULL,
Instructor VARCHAR(100) NOT NULL,
Credits INT NOT NULL);

-- Inserting data in the Courses Table
INSERT INTO Courses
(CourseName, Instructor, Credits)
VALUES
('English', 'Dr.Mariam',54),
('Mathematics',	'Sir.James', 76),
('History', 'Mr.Hosea', 86);

-- Dropping the EnrolledStudents Table 
DROP TABLE Enrolledstudents;



  


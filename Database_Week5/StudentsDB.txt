SELECT * FROM studentsdb.student;
ALTER TABLE student
ADD First_Name TEXT NOT NULL,
ADD Last_Name TEXT NOT NULL,
ADD Date_of_Birth DATE NOT NULL; 

ALTER TABLE student
DROP First_Name,
DROP Last_Name,
DROP Date_of_Birth;

ALTER TABLE student
ADD FirstName TEXT NOT NULL,
ADD LastName TEXT NOT NULL,
ADD DateOfBirth DATE NOT NULL,
ADD Email TEXT NOT NULL,
ADD Major TEXT NOT NULL;

INSERT INTO student(
FirstName, LastName, DateOfBirth, Email, Major)
VALUES( 'John', 'Adams', '2007-04-12', 'Johnadams2007@gmail.com', 'English');

INSERT INTO student(
FirstName, LastName, DateOfBirth, Email, Major)
VALUES
( 'Anna', 'James', '2006-10-02', 'jamannie07@gmail.com', 'Mathematics'),
( 'Mariam', 'Swaleh', '2007-01-25', 'mamswaht2007@gmail.com', 'Geography'),
( 'Salum', 'Hajji', '2006-12-03', 'hsalum07@gmail.com', 'English'),
( 'John', 'Adams', '2007-04-12', 'Johnadams2007@gmail.com', 'History'),
( 'Abdallah', 'Khafidh', '2008-09-17', 'ahkafidh001@gmail.com', 'Civics'),
( 'Monicca', 'Hassan', '2006-07-28', 'monniecurl@gmail.com', 'Mathematics');


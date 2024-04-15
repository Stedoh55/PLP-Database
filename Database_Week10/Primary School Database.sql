ss-- Creating the Primary School Database
CREATE TABLE `primary_school`.`students` (
  `StudentID` INT NOT NULL AUTO_INCREMENT,
  `StudentNames` VARCHAR(45) NOT NULL,
  `Subject` VARCHAR(45) NOT NULL,
  `Age` INT NOT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE INDEX `StudentNames_UNIQUE` (`StudentNames` ASC) VISIBLE);
  
  -- Inserting Data into the primary school database
  INSERT INTO students
  (StudentNames, Subject, Age)
  VALUES
  ('James Amos', 'English', 10),
  ('Anna Williams', 'Mathematics', 9),
  ('Janne Adanm', 'History', 11),
  ('Alexandre Titus', 'Civics', 10),
  ('Faraja Charles', 'Kiswahili', 9),
  ('Barnaba Wambura', 'History', 10),
  ('Victoria Samweli', 'Science', 9),
  ('Zulfa Abdallah', 'English', 10),
  ('Saraphina Honest', 'Sports', 11);
  
  -- Selecting the database sorting by student names in Descending Order
  SELECT * FROM students
  ORDER BY StudentNames DESC;

/* Here the Database will select all the items and returning the names in the Descending order,
that is in the reverse of their alphabetical arrangement*/
  
  -- selecting the database and ordering by Age following by subjects in ascending order
  SELECT StudentNames, Subject, Age
  FROM students
  ORDER BY Age ASC, Subject ASC;

/* Here the Database will select student names their subjects and age
and returning the output arranged in the increasing order of their ages 
followed by the increasing order of their Subjects, that is in Alphabetical order*/
  

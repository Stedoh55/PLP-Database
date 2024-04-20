-- Creating a Table
CREATE TABLE Anniversary(
first_name VARCHAR(45) PRIMARY KEY NOT NULL,
last_name VARCHAR(45) NOT NULL,
hire_date DATE NOT NULL,
aniversary VARCHAR(45));

-- Filling the Tavble with data
INSERT INTO anniversary
(first_name, last_name, hire_date)
VALUES
('Adam', 'Fripp', '1997-04-10'),
('Alexander', 'Hunold', '1990-01-03'),
('Allena', 'Khoo', '1995-05-18'),
('Britney', 'Everett', '1997-03-03'),
('Bruce', 'Ernst', '1991-05-21'),
('Charles', 'Johnson', '2000-01-04'),
('Daniel', 'Faviet', '1994-08-16');

-- Finding the Anniversary by Conditionals
SELECT
first_name, last_name, hire_date,
CASE( 2000 - YEAR(hire_date))   -- Here YEAR function return the year the employee joined

WHEN 1 THEN 'I year'
WHEN 3 THEN '3 years'
WHEN 5 THEN '5 years'
WHEN 10 THEN '10 years'
WHEN 20 THEN '20 years'
END aniversary
FROM
anniversary
ORDER BY first_name;


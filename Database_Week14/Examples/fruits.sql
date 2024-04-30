CREATE TABLE fruits(
fruit_id INT PRIMARY KEY,
fruit_name VARCHAR(255) NOT NULL,
basket_id INTEGER);

-- Insert data into fruits table
INSERT INTO fruits
(fruit_id, fruit_name, basket_id)
VALUES
( 1, 'Apple', 1),
( 2, 'Orange', 1),
( 3, 'Banana', 2),
( 4, 'Strawberry', NULL);

-- SELF joining fruits and baskets Tablea
SELECT
*
FROM fruits A
INNER JOIN fruits B ON A.fruit_id = B.basket_id;



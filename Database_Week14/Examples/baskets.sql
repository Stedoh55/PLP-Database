-- Creating baskets table 
CREATE TABLE baskets(
basket_id INT PRIMARY KEY,
basket_name VARCHAR(255) NOT NULL);

-- Inserting data into the Baskets
INSERT INTO baskets
(basket_id, basket_name)
VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');
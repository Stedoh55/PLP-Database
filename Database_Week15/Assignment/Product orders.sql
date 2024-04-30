-- Creating the Orders Table
CREATE TABLE Orders(
OrderID INT PRIMARY KEY AUTO_INCREMENT,
productID INT NOT NULL,
Quantity INT,
Price INT);

-- Adding the data to the orders table
INSERT INTO Orders
(productID, Quantity, Price)
VALUES
(10, 150, 2000),
(30, 50, 5000),
(70, 300, 1000),
(20, 100, 7000),
(50, 70, 4000),
(60, 20, 8000),
(75, 120, 5000),
(80, 200, 4000),
(35, 300, 7000),
(15, 250, 6000),
(45, 300, 4000);

-- Selecting Tables Data
SELECT * FROM Orders;

-- Calculate Total quantity of products sold
SELECT
SUM(Quantity)Total_Qtty
FROM
Orders;

-- Finding Average Price of products
SELECT
AVG(Price)Avg_Salary
FROM
Orders;

-- Finding product with the highest price
SELECT
MAX(Price)Highest_Price
FROM
Orders;



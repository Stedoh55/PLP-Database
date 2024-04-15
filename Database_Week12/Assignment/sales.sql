-- Creating the sales Table
CREATE TABLE sales(
ProductID INT PRIMARY KEY AUTO_INCREMENT,
Category VARCHAR(50) NOT NULL,
QuantitySold INT NOT NULL,
Revenue INT NOT NULL);

-- Filling Sales Table with data
INSERT INTO sales
(Category, QuantitySold, Revenue)
VALUES
('Grocery', 200 ,2000 ),
('Clothings', 150 , 2000),
('Food', 300 , 5000),
('Shoes',  50, 1000),
('Oil', 30 , 4000),
('Cosmetics', 10 , 3000);

-- The filled sales table 
SELECT * FROM sales_book.sales;

-- Calculating total quantity sold and revenue
SELECT
COALESCE(ProductID, 'All categories')ProductID,
Category,
SUM(QuantitySold)QuantitySold,
SUM(Revenue)Revenue
FROM
sales
GROUP BY ROLLUP(ProductID, category);

-- Product category with highest total revenue
SELECT * FROM sales
WHERE Revenue = (SELECT MAX(REVENUE) FROM sales);

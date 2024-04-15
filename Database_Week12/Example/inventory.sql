CREATE TABLE inventory(
warehouse VARCHAR(255),
product VARCHAR(255) NOT NULL,
model VARCHAR(50) NOT NULL,
quantity INT,
PRIMARY KEY(warehouse, product, model)
);

-- Insert data into the inventory
INSERT INTO inventory
(warehouse, product, model, quantity)
VALUES
('San Jose', 'iPhone', '6s', 100),
('San Fransisco', 'iPhone', '6s', 50),
('San Jose', 'iPhone', '7', 50),
('San Fransisco', 'iPhone', '7', 10),
('San Jose', 'iPhone', 'X', 150),
('San Fransisco', 'iPhone', 'X', 200),
('San Jose', 'Samsung', 'Galaxy S', 200),
('San Fransisco', 'Samsung', 'Galaxy S', 200),
('San Fransisco', 'Samsung', 'Note 8', 100),
('San Jose', 'Samsung', 'Note 8', 150);

-- Querying the Data
SELECT * FROM inventory;

-- Creating the number of stock keeping units (SKU) in a warehouse, stored as qty fromthe two warehouses
SELECT 
warehouse,
product,
SUM(quantity)qty
FROM
inventory
GROUP BY
warehouse,
product;



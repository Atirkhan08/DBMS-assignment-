-- Assignment 6: Sorting Rows and Removing Repeats
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS product;
CREATE TABLE product (product_name VARCHAR(30), category VARCHAR(20), price INT);
INSERT INTO product (product_name, category, price) VALUES
('Pen', 'Stationery', 15), ('Notebook', 'Stationery', 60),
('Calculator', 'Electronics', 850), ('Bag', 'Office', 500);

-- Task 1: Products sorted from highest to lowest price.
SELECT product_name, price FROM product ORDER BY price DESC;

-- Task 2: Show each category once, sorted by category.
SELECT DISTINCT category FROM product ORDER BY category;

-- Task 3: Show the two most expensive products.
SELECT product_name, price FROM product
ORDER BY price DESC
LIMIT 2;

-- Expected output (reference)
-- Task 1:
-- product_name | price
-- -------------+------
-- Calculator   | 850
-- Bag          | 500
-- Notebook     | 60
-- Pen          | 15
-- 
-- Task 2:
-- category
-- ----------
-- Electronics
-- Office
-- Stationery
-- 
-- Task 3:
-- product_name | price
-- -------------+------
-- Calculator   | 850
-- Bag          | 500

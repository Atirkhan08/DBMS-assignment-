-- Assignment 7: Using Aggregate Functions
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (salesperson VARCHAR(20), region VARCHAR(20), amount INT);
INSERT INTO sales (salesperson, region, amount) VALUES
('Deepak', 'North', 12000), ('Pooja', 'South', 8500),
('Deepak', 'South', 9500), ('Lata', 'North', 11000);

-- Task 1: Count the number of sales rows.
SELECT COUNT(*) AS num_sales FROM sales;

-- Task 2: Calculate the total amount.
SELECT SUM(amount) AS total FROM sales;

-- Task 3: Find the highest amount.
SELECT MAX(amount) AS highest FROM sales;

-- Expected output (reference)
-- Task 1: num_sales = 4
-- Task 2: total = 41000
-- Task 3: highest = 12000

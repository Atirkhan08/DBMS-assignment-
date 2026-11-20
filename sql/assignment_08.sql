-- Assignment 8: Grouping Rows and Using HAVING
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS shop_sale;
CREATE TABLE shop_sale (salesperson VARCHAR(20), region VARCHAR(20), amount INT);
INSERT INTO shop_sale (salesperson, region, amount) VALUES
('Deepak', 'North', 12000), ('Pooja', 'South', 8500),
('Deepak', 'South', 9500), ('Lata', 'North', 11000);

-- Task 1: Count sales in each region.
SELECT region, COUNT(*) AS num_sales
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Task 2: Total amount in each region.
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
ORDER BY region;

-- Task 3: Regions with total amount greater than 20000.
SELECT region, SUM(amount) AS total
FROM shop_sale
GROUP BY region
HAVING SUM(amount) > 20000
ORDER BY region;

-- Expected output (reference)
-- Task 1:
-- region | num_sales
-- -------+----------
-- North  | 2
-- South  | 2
-- 
-- Task 2:
-- region | total
-- -------+------
-- North  | 23000
-- South  | 18000
-- 
-- Task 3:
-- region | total
-- -------+------
-- North  | 23000

-- Assignment 15: Indexes and Adding a Row
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    city VARCHAR(20)
);
INSERT INTO customer (customer_id, name, city) VALUES
(1, 'Kiran', 'Kochi'), (2, 'Deepak', 'Delhi'),
(3, 'Lata', 'Mumbai'), (4, 'Asha', 'Delhi');

-- Task 1: Create an index on the city column.
CREATE INDEX idx_city ON customer(city);

-- Task 2: Find customers living in Delhi.
SELECT name FROM customer
WHERE city = 'Delhi'
ORDER BY name;

-- Task 3: Add the new customer in one INSERT statement.
INSERT INTO customer (customer_id, name, city)
VALUES (5, 'Arjun', 'Pune');
SELECT * FROM customer ORDER BY customer_id;

-- Expected output (reference)
-- Task 2:
-- name
-- ------
-- Asha
-- Deepak
-- 
-- Task 3:
-- customer_id | name   | city
-- ------------+--------+------
-- 1           | Kiran  | Kochi
-- 2           | Deepak | Delhi
-- 3           | Lata   | Mumbai
-- 4           | Asha   | Delhi
-- 5           | Arjun  | Pune

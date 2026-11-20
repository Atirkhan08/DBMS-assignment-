-- Assignment 2: Updating and Deleting Rows
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS stock;
CREATE TABLE stock (
    item_code INT,
    item_name VARCHAR(30),
    quantity INT
);
INSERT INTO stock (item_code, item_name, quantity) VALUES
(1, 'Notebook', 50),
(2, 'Pen', 120),
(3, 'Bag', 0);

-- Task 1: Change quantity of item_code 1 to 80.
UPDATE stock SET quantity = 80 WHERE item_code = 1;
SELECT * FROM stock ORDER BY item_code;

-- Task 2: Add 10 to quantity of item_code 2.
UPDATE stock SET quantity = quantity + 10 WHERE item_code = 2;
SELECT * FROM stock ORDER BY item_code;

-- Task 3: Delete item_code 3.
DELETE FROM stock WHERE item_code = 3;
SELECT * FROM stock ORDER BY item_code;

-- Expected output (reference)
-- After Task 1:
-- item_code | item_name | quantity
-- ----------+-----------+---------
-- 1         | Notebook  | 80
-- 2         | Pen       | 120
-- 3         | Bag       | 0
-- 
-- After Task 2:
-- item_code | item_name | quantity
-- ----------+-----------+---------
-- 1         | Notebook  | 80
-- 2         | Pen       | 130
-- 3         | Bag       | 0
-- 
-- After Task 3:
-- item_code | item_name | quantity
-- ----------+-----------+---------
-- 1         | Notebook  | 80
-- 2         | Pen       | 130

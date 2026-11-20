-- Assignment 14: Creating and Using a View
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP VIEW IF EXISTS high_scores;
DROP TABLE IF EXISTS score;
CREATE TABLE score (name VARCHAR(30), subject VARCHAR(20), marks INT);
INSERT INTO score (name, subject, marks) VALUES
('Asha', 'Maths', 78), ('Rohan', 'Maths', 64),
('Neha', 'Maths', 88), ('Kiran', 'Maths', 52);

-- Task 1: Create a view for marks of 70 or more.
CREATE VIEW high_scores AS
SELECT name, marks
FROM score
WHERE marks >= 70;

-- Task 2: Show all rows of the view.
SELECT * FROM high_scores;

-- Task 3: Show names from the view in alphabetical order.
SELECT name FROM high_scores ORDER BY name;

-- Expected output (reference)
-- Task 2:
-- name | marks
-- -----+------
-- Asha | 78
-- Neha | 88
-- 
-- Task 3:
-- name
-- ----
-- Asha
-- Neha

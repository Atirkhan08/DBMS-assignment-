-- Assignment 12: Using a Subquery
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS club_a;
DROP TABLE IF EXISTS club_b;
CREATE TABLE club_a (student_name VARCHAR(30));
INSERT INTO club_a (student_name) VALUES ('Asha'), ('Rohan'), ('Neha');
CREATE TABLE club_b (student_name VARCHAR(30));
INSERT INTO club_b (student_name) VALUES ('Neha'), ('Pooja'), ('Meera');

-- Task 1: Names in club_a that are also in club_b.
SELECT student_name
FROM club_a
WHERE student_name IN (SELECT student_name FROM club_b);

-- Task 2: Count the names in club_b.
SELECT COUNT(*) AS members FROM club_b;

-- Task 3: Display names in club_a in alphabetical order.
SELECT student_name FROM club_a ORDER BY student_name;

-- Expected output (reference)
-- Task 1:
-- student_name
-- ------------
-- Neha
-- 
-- Task 2: members = 3
-- 
-- Task 3:
-- student_name
-- ------------
-- Asha
-- Neha
-- Rohan

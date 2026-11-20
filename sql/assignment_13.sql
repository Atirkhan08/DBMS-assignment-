-- Assignment 13: UNION and INTERSECT
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS club_a;
DROP TABLE IF EXISTS club_b;
CREATE TABLE club_a (student_name VARCHAR(30));
INSERT INTO club_a (student_name) VALUES ('Asha'), ('Rohan'), ('Neha');
CREATE TABLE club_b (student_name VARCHAR(30));
INSERT INTO club_b (student_name) VALUES ('Neha'), ('Pooja'), ('Meera');

-- Task 1: All distinct names from both clubs.
SELECT student_name FROM club_a
UNION
SELECT student_name FROM club_b
ORDER BY student_name;

-- Task 2: Names present in both clubs.
SELECT student_name FROM club_a
INTERSECT
SELECT student_name FROM club_b
ORDER BY student_name;

-- Task 3: All names, including duplicates.
SELECT student_name FROM club_a
UNION ALL
SELECT student_name FROM club_b
ORDER BY student_name;

-- Expected output (reference)
-- Task 1:
-- Asha
-- Meera
-- Neha
-- Pooja
-- Rohan
-- 
-- Task 2:
-- Neha
-- 
-- Task 3:
-- Asha
-- Meera
-- Neha
-- Neha
-- Pooja
-- Rohan

-- Assignment 9: Aliases and CASE
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS exam_result;
CREATE TABLE exam_result (name VARCHAR(20), marks INT);
INSERT INTO exam_result (name, marks) VALUES
('Asha', 92), ('Rohan', 47), ('Neha', 68), ('Meera', 33);

-- Task 1: Rename columns using AS.
SELECT name AS student_name, marks AS score FROM exam_result;

-- Task 2: Display Pass for marks 40 or more, otherwise Fail.
SELECT name,
       CASE WHEN marks >= 40 THEN 'Pass' ELSE 'Fail' END AS result
FROM exam_result;

-- Task 3: Add five bonus marks.
SELECT name, marks + 5 AS with_bonus FROM exam_result;

-- Expected output (reference)
-- Task 1:
-- student_name | score
-- -------------+------
-- Asha         | 92
-- Rohan        | 47
-- Neha         | 68
-- Meera        | 33
-- 
-- Task 2:
-- name  | result
-- ------+-------
-- Asha  | Pass
-- Rohan | Pass
-- Neha  | Pass
-- Meera | Fail
-- 
-- Task 3:
-- name  | with_bonus
-- ------+-----------
-- Asha  | 97
-- Rohan | 52
-- Neha  | 73
-- Meera | 38

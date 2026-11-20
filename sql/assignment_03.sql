-- Assignment 3: Selecting Columns and Rows with WHERE
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS student;
CREATE TABLE student (roll_no INT, name VARCHAR(30), marks INT);
INSERT INTO student (roll_no, name, marks) VALUES
(101, 'Asha', 78), (102, 'Rohan', 64),
(103, 'Neha', 88), (104, 'Deepak', 52);

-- Task 1: Show only name and marks.
SELECT name, marks FROM student;

-- Task 2: Show all columns where marks are greater than 60.
SELECT * FROM student WHERE marks > 60;

-- Task 3: Show the name of the student whose roll number is 103.
SELECT name FROM student WHERE roll_no = 103;

-- Expected output (reference)
-- Task 1:
-- name  | marks
-- ------+------
-- Asha  | 78
-- Rohan | 64
-- Neha  | 88
-- Deepak| 52
-- 
-- Task 2:
-- roll_no | name  | marks
-- --------+-------+------
-- 101     | Asha  | 78
-- 102     | Rohan | 64
-- 103     | Neha  | 88
-- 
-- Task 3:
-- name
-- ----
-- Neha

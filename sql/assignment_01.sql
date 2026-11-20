-- Assignment 1: Creating a Table and Adding Rows
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS student;
CREATE TABLE student (
    roll_no INT,
    name VARCHAR(30),
    marks INT
);

-- Task 1 and 2: Insert all three rows with one INSERT statement.
INSERT INTO student (roll_no, name, marks) VALUES
(101, 'Asha', 78),
(102, 'Rohan', 64),
(103, 'Neha', 88);

-- Task 3: Display all columns and rows.
SELECT * FROM student;

-- Expected output (reference)
-- roll_no | name  | marks
-- --------+-------+------
-- 101     | Asha  | 78
-- 102     | Rohan | 64
-- 103     | Neha  | 88

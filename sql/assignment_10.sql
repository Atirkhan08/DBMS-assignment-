-- Assignment 10: Joining Two Tables with INNER JOIN
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
CREATE TABLE department (dept_id INT, dept_name VARCHAR(20));
INSERT INTO department (dept_id, dept_name) VALUES
(10, 'Accounts'), (20, 'Sales'), (40, 'Research');
CREATE TABLE employee (emp_name VARCHAR(30), dept_id INT, salary INT);
INSERT INTO employee (emp_name, dept_id, salary) VALUES
('Anita', 10, 90000), ('Lata', 20, 55000),
('Deepak', 10, 60000), ('Pooja', 20, 42000);

-- Task 1: Employee names with department names.
SELECT e.emp_name, d.dept_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
ORDER BY e.emp_name;

-- Task 2: Employees in the Sales department.
SELECT e.emp_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_name;

-- Task 3: Employee, department and salary, highest salary first.
SELECT e.emp_name, d.dept_name, e.salary
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;

-- Expected output (reference)
-- Task 1:
-- emp_name | dept_name
-- ---------+----------
-- Anita    | Accounts
-- Deepak   | Accounts
-- Lata     | Sales
-- Pooja    | Sales
-- 
-- Task 2:
-- emp_name
-- --------
-- Lata
-- Pooja
-- 
-- Task 3:
-- emp_name | dept_name | salary
-- ---------+-----------+------
-- Anita    | Accounts  | 90000
-- Deepak   | Accounts  | 60000
-- Lata     | Sales     | 55000
-- Pooja    | Sales     | 42000

-- Assignment 5: Pattern Matching with LIKE
-- Name: [Your Name] | Roll No.: [Your Roll Number]
DROP TABLE IF EXISTS book;
CREATE TABLE book (title VARCHAR(40), category VARCHAR(20), copies INT);
INSERT INTO book (title, category, copies) VALUES
('Database Systems', 'Computer', 3),
('Digital Electronics', 'Electronics', 2),
('Data Structures in C', 'Computer', 2),
('Short Stories', 'Literature', 1);

-- Task 1: Titles starting with Data.
SELECT title FROM book WHERE title LIKE 'Data%';

-- Task 2: Titles ending with C.
SELECT title FROM book WHERE title LIKE '%C';

-- Task 3: Titles whose second letter is h.
SELECT title FROM book WHERE title LIKE '_h%';

-- Expected output (reference)
-- Task 1:
-- Database Systems
-- Data Structures in C
-- 
-- Task 2:
-- Data Structures in C
-- 
-- Task 3:
-- Short Stories

-- write a this schema
--
-- students table
-- id, first_name
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);
-- papers table
-- title, grade, student_id = students.id
CREATE TABLE papers(
    title VARCHAR(255),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);
-- copy this data
INSERT INTO students (first_name)
VALUES ('Caleb'),
    ('Samantha'),
    ('Raj'),
    ('Carlos'),
    ('Lisa');
-- copy this data
INSERT INTO papers (student_id, title, grade)
VALUES (1, 'My First Book Report', 60),
    (1, 'My Second Book Report', 75),
    (2, 'Russian Lit Through The Ages', 94),
    (2, 'De Montaigne and The Art of The Essay', 98),
    (4, 'Borges and Magical Realism', 89);
-- print first_name, title, grade
SELECT s.first_name,
    p.title AS title,
    p.grade AS grade
FROM students AS s
    INNER JOIN papers AS p ON s.id = p.student_id
GROUP BY s.first_name,
    p.title,
    p.grade
ORDER BY grade DESC;
-- print: first_name, title, grade and null value
SELECT s.first_name,
    p.title,
    p.grade
FROM students AS s
    LEFT JOIN papers AS p ON p.student_id = s.id;
-- print: first_name, title, grade and null value with value of zero (0)
SELECT s.first_name,
    IFNULL(p.title, 'MISSING') AS title,
    IFNULL(p.grade, 0) AS grade
FROM students AS s
    LEFT JOIN papers AS p ON p.student_id = s.id;
-- print: first_name, average grade
SELECT s.first_name,
    IFNULL(AVG(p.grade), 0) AS average
FROM students AS s
    LEFT JOIN papers AS p ON p.student_id = s.id
GROUP BY s.first_name
ORDER BY average DESC;
-- print: average, passing_status
SELECT s.first_name,
    IFNULL(AVG(p.grade), 0) AS average,
    CASE
        WHEN IFNULL(AVG(p.grade), 0) > 75 THEN 'Passing'
        ELSE 'Failing'
    END AS passing_status
FROM students AS s
    LEFT JOIN papers AS p ON p.student_id = s.id
GROUP BY s.first_name
ORDER BY average DESC;
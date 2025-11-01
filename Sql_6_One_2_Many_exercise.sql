-- use exercise
-- show tables

-- create table students (
-- id int auto_increment primary key,
-- first_name varchar(20)
-- ) 

-- create table papers (
-- title varchar(100),
-- grade int,
-- student_id int)

-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- 1.
-- select first_name, title, grade from papers
-- join students on students.id = papers.student_id
-- order by first_name ASC
-- --
-- SELECT <columns>
-- FROM parent_table
-- JOIN child_table
--   ON parent_table.id = child_table.parent_id;

-- 2.
-- select first_name, title, grade from students
-- left join papers on papers.student_id = students.id 

-- 3.
-- SELECT 
--     first_name,
--     IFNULL(title, 'MISSING') AS title,
--     IFNULL(grade, 0) AS grade
-- FROM
--     students
--         LEFT JOIN
--     papers ON papers.student_id = students.id

-- 4.
-- SELECT 
--     first_name, IFNULL(AVG(grade), 0) AS grade
-- FROM
--     students
--         LEFT JOIN
--     papers ON papers.student_id = students.id
-- GROUP BY students.ID
-- order by grade DESC

-- 5.
-- SELECT 
--     first_name,
--     IFNULL(AVG(grade), 0) AS grade,
--     CASE
--         WHEN IFNULL(AVG(grade), 0) > 75 THEN 'pass'
--         ELSE 'fail'
--     END AS passing_status
-- FROM
--     students
--         LEFT JOIN
--     papers ON papers.student_id = students.id
-- GROUP BY students.ID
-- ORDER BY grade DESC

-- 6.













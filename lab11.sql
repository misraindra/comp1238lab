-- PRACTICE QUERIES
SELECT * FROM courses;
-- running this query pulls up a list of all the course codes with semester number, course name, lab time, lecture time and notes

SELECT * FROM assignments
LIMIT 10;
-- running this query pulls a list of 10 assignments along with relevant course id, status, title and due date

SELECT count(*) FROM courses;
-- shows count as 35

SELECT min(due_date) FROM assignments;
-- shows min due date which was 2024-09-10

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';
-- pulls up a list of all courses with course name starting with intro

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;
-- shows a list of all incomplete assignment in ascending order of due dates

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;
-- shows a list of assignments that are due for the course id starting with COMM, and in ascending order of due date



-- EXERCISE QUESTIONS
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';
-- shows title and due date of assignments for COMP1234

SELECT MIN(due_date)
FROM assignments;
-- shows the earliest assignment due date

SELECT MAX(due_date)
FROM assignments;
-- shows the latest assignment due date. opposite of MIN() https://www.w3schools.com/sql/sql_min_max.asp#:~:text=The%20MIN()%20function%20returns,value%20of%20the%20selected%20column.

SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';
-- shows title and course id for assignment due on 2024-10-08

SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';
-- shows title and due date of all assignments due in the month of october

SELECT *
FROM assignments
WHERE due_date = '2024-09-10';
-- shows the most recently completed assignment
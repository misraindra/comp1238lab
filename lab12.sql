-- Exercise queries

-- Concatenates the course_name and semester fields with a hyphen between them.
SELECT 
    course_name || ' - ' || semester
FROM 
    courses;

-- Finds all courses that have a lab session scheduled on Friday, showing course_id, course_name, and lab_time.
SELECT 
    course_id, 
    course_name, 
    lab_time
FROM 
    courses
WHERE 
    lab_time = 'Friday';

-- Lists all assignments with a due date after the current date, ordered by due_date.
SELECT 
    course_id, 
    title, 
    status, 
    due_date
FROM 
    assignments
WHERE 
    due_date > DATE('now')
ORDER BY 
    due_date;

-- Counts the number of assignments grouped by their status (e.g., Not Started, In Progress, Completed).
SELECT 
    status, 
    COUNT(*)
FROM 
    assignments
GROUP BY 
    status;

-- Finds the course with the longest course_name by ordering the lengths in descending order and limiting to one.
SELECT 
    course_id, 
    course_name
FROM 
    courses
ORDER BY 
    LENGTH(course_name) DESC;

-- Converts all course names to uppercase and lists them.
SELECT 
    UPPER(course_name)
FROM 
    courses;

-- Lists all assignment titles with a due_date in the month of September, regardless of year.
SELECT 
    title
FROM 
    assignments
WHERE 
    due_date LIKE '____-09-%';

-- Finds all assignments where the due_date is missing (i.e., NULL).
SELECT 
    course_id, 
    title, 
    status
FROM 
    assignments
WHERE 
    due_date IS NULL;

DESC system.students;

SELECT * FROM students;

-- We find the row we want to update
SELECT *
FROM students
WHERE student_id = 3;

UPDATE students
SET major = 'MATH'
WHERE student_id = 3;

SELECT * FROM students;

EXIT



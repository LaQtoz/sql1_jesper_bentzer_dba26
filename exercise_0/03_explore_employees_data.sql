SET PAGESIZE 100;

-- Count how many rows there are
SELECT COUNT(*) FROM employees

-- Select top five rows
PROMPT === SELECT FIRST 5 ROWS ===
SELECT * FROM employees
FETCH FIRST 5 ROWS ONLY;

-- Select top 10% of the rows
PROMPT === 10% of EMPLOYEES ===
SELECT * FROM employees
FETCH FIRST 10 PERCENT ROWS ONLY;

-- Find all first names and their field for those with salaries less than 40k
PROMPT === SELECT FIRST_NAMES, FIELD and SALARIES > 40000 ===
SELECT
    first_name,
    field,
    monthly_salary
FROM employees
WHERE monthly_salary > 40000;

-- Find all rows with salaries between 40 and 50k. Also roder this by top salaries.
PROMPT === SELECT ALL ROWS WITH SALARIES BETWEEN 40 and 50k DESC ===
SELECT *
FROM employees
WHERE monthly_salary BETWEEN 40000 AND 50000
ORDER BY monthly_salary DESC;


EXIT 

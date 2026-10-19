-- We set the page size we will see to 100
SET PAGESIZE 100

DESC system.salaries_sf;


-- Count the number of rows
SELECT 
    COUNT(*) AS number_rows,
-- COUNT(*) number_rows dose the same thing as COUNT(*) AS number_rows 
    COUNT(*) number_rows
FROM salaries_sf;


-- Count unique jobs, years and agencies
SELECT
    COUNT(DISTINCT jobtitle) AS unique_jobs,
    COUNT(DISTINCT year) AS unique_years,
    COUNT(DISTINCT agency) AS unique_agency
FROM salaries_sf;


-- List all distinct agencies
SELECT DISTINCT agency FROM salaries_sf;

--Exits SQLCL
EXIT

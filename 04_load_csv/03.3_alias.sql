-- We tell the system to describe the salaries list in Oracle SQL
DESC system.salaries_sf;

-- We select all from salaries and order them by employeename and fetch the first 5 rows only.
SELECT * FROM salaries_sf
ORDER BY employeename
FETCH FIRST 5 ROWS ONLY;

-- alias either with AS or just space
SELECT
    COUNT(*),
    ROUND(AVG(basepay)) AS avg_basepay,
    ROUND(AVG(totalpay)) AS avg_totalpay,
    ROUND(AVG(totalpaybenefits)) AS avg_totalpaybenefits,
    COUNT(DISTINCT year) AS unique_years,
    COUNT(DISTINCT jobtitle) AS unique_jobs
FROM salaries_sf;

-- We get a deistinct year from the salaries list
SELECT DISTINCT year FROM salaries_sf;

EXIT

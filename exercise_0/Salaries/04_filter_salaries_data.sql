SET PAGESIZE 100;

DESC system.salaries_sf;

PROMPT === Counting number of people with base salary over 100k ===
SELECT COUNT(*) AS number_of_people 
FROM salaries_sf
WHERE basepay > 100000;

PROMPT === Counting number of people with base salary over 100k, 150k and 200k ===
SELECT
    COUNT(CASE WHEN basepay >= 100000 THEN 1 END) AS salary_100k, 
    COUNT(CASE WHEN basepay >= 150000 THEN 1 END) AS salary_150k,
    COUNT(CASE WHEN basepay >= 200000 THEN 1 END) AS salary_200k
FROM system.salaries_sf;

EXIT


SET PAGESIZE 100
DESC system.salaries_sf;

SELECT *
FROM salaries_sf
FETCH FIRST 20 ROWS ONLY;

SELECT COUNT(*) FROM salaries_sf;


-- Picks out a few colums and paginate
SELECT
    id,
    employeename,
    jobtitle,
    totalpay,
    status
FROM salaries_sf
OFFSET 20 ROWS FETCH NEXT 20 ROWS ONLY;

-- Pick out the top x precent
SELECT 
    id, employeename, totalpaybenefits
FROM salaries_sf
FETCH FIRST .2 PERCENT ROWS ONLY;


--Exits SQLCL
EXIT

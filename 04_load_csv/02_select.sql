-- We set the size of the page we want to see to 100
SET PAGESIZE 100
DESC system.salaries_sf;

-- We select *(all) from salaries_sf(what we named the list we loaded into SQL) from * we only fetch the first 20 rows
SELECT *
FROM salaries_sf
FETCH FIRST 20 ROWS ONLY;

-- We select all of count from the slararies list
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

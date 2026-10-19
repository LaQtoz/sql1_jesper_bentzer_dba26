-- We set the page size to 100
SET PAGESIZE 100

DESC system.salaries_sf;

-- We select id, emplyeename, jobtitles and totalpaybenefits from the salaries_sf list 
-- and order them by totalpaybenefits desending but we only want the 0.1 precent shown
SELECT
    id,
    employeename,
    jobtitle,
    totalpaybenefits
FROM
    salaries_sf
ORDER BY totalpaybenefits DESC
FETCH FIRST .1 PERCENT ROWS ONLY;


-- We select id, emplyeename and basepay from the salaries list we want it in the order of 
-- emplyeename and basepay desending but only want the first 0.1 precent shown
SELECT
    id,
    employeename,
    basepay
FROM
    salaries_sf
ORDER BY employeename, basepay DESC
FETCH FIRST .1 PERCENT ROWS ONLY;


--Exits SQLCL
EXIT

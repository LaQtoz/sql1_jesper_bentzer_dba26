SET SQLFORMAT csv
SET FEEDBACK OFF


-- We SELECT ALL from the salaries list and show only the 0.2 precent
SELECT *
FROM salaries_sf
ORDER BY basepay DESC NULLS LAST
FETCH FIRST .2 PERCENT ROWS ONLY;

EXIT

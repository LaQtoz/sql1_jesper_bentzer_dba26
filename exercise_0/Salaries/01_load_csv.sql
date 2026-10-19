-- We load only 5000 rows of the list we will load
SET LOAC SCAN_ROWS 5000
-- We load the Salaries.csv list into our SQL
LOAD salaries_sf Salaries.csv NEW

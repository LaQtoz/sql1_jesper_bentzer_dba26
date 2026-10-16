SET PAGESIZE 100

DESC system.amazon;

SELECT AVG(profit)
FROM amazon;

SELECT
    category,
    product_name,
    profit,
    CASE
        WHEN profit < 0 THEN 'Negative' 
        WHEN profit < 34 THEN 'Low'
        WHEN profit < 60 THEN 'Medium'
        ELSE 'High'
    END AS PROFIT_level
FROM amazon;
FETCH FIRST 1 PRECENT ROWS ONLY;

EXIT

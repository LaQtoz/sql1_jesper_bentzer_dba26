SET PAGESIZE 100

-- We select the list we created and called amazon from the 'Amazon 2_Raw file
SELECT *
FROM amazon
FETCH FIRST 5 ROWS ONLY;

DESC system.amazon

SELECT
order_id,
category,
product_name,
sales,
quantity,
profit
FROM amazon
WHERE profit > 190
ORDER BY profit DESC
FETCH FIRST 5 ROWS ONLY;


-- number of orders where profi > 190
SELECT count(*)
FROM amazon
WHERE profit > 190

SELECT * FROM amazon
WHERE order_id = 'CA-2012-111780';

SELECT
MIN(sales),
ROUND(MEDIAN(sales)),
AVG(sales),
MAX(sales)
FROM amazon


SELECT
MIN(sales),
ROUND(MEDIAN(sales)),
AVG(sales),
MAX(sales)
FROM amazon
WHERE category = 'Phones';

EXIT

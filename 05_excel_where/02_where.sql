SET PAGESIZE 100

-- We select the list we created and called amazon from the 'Amazon 2_Raw file
SELECT *
FROM amazon
FETCH FIRST 5 ROWS ONLY;

DESC system.amazon

-- We select different categories (order_id, category, product_name, sales, quantity and prfit) from the amazon list
-- We also set a clause to it where we only want these categories where the profit is > 190 and we order that information by profit Desending
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

-- Find those with negative profits
SELECT
    product_name,
    category,
    profit
FROM amazon
WHERE profit < 0
ORDER BY profit;


-- number of orders where profi > 190
SELECT count(*)
FROM amazon
WHERE profit > 190

SELECT * FROM amazon
WHERE order_id = 'CA-2012-111780' AND category = 'Phones';

-- We select the minimum sales, the median of sales, average sales and max sales from the amazon list
SELECT
MIN(sales),
ROUND(MEDIAN(sales)),
AVG(sales),
MAX(sales)
FROM amazon

-- We select the minimum sales, median of sales, average sales, max sales from the amazon list where the category is Phones
SELECT
MIN(sales),
ROUND(MEDIAN(sales)),
AVG(sales),
MAX(sales)
FROM amazon
WHERE category = 'Phones';


-- In operator
SELECT category, product_name, sales
FROM amazon
WHERE category IN ('Tables', 'Chairs', 'Binders');

EXIT

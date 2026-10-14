SET PAGESIZE 100

SELECT * FROM jokes;


DESC system.jokes;

SELECT
    category,
    rating,
    joke 
FROM jokes
WHERE rating between 6 8
ORDER BY rating DESC, category
FETCH FIRST 5 ROWS ONLY;

-- TODO:
-- 1. Find all jokes that have rating 6-8
-- 2. Filter out all DBA jokes 
-- 3. Filter our all DBA and Linux jokes with rating over 6



EXIT

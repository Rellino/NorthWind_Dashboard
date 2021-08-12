-- INTRO SQL

SELECT column_name(s), --* 

FROM table_name

WHERE column_name **condition**  -- <,>, >=, = , <>, BETWEEN ... AND ..., IS NULL
**another option:** WHERE column_name LIKE '%_'  --checking text 
**for RegEx: instead of LIKE:** WHERE column_name ~ 'pattern'

ORDER BY column_names DESC  --sort_values in pandas

LIMIT 10   --.head(10)
;
--**Chain conditions with AND and OR**




-- artithmetic operations
SELECT productname, unitprice * unitsinstock AS inv_price
FROM products
;

-- aggregations
SELECT COUNT(unitprice)   --SUM, AVG, MIN, MAX,...
FROM products
;

-- Groupby **ok for me
SELECT category_id, AVG(unit_price) AS avg_price
FROM products
GROUP BY category_id
ORDER BY avg_price DESC;
--df.groupby('categoryid')['unitprice'].mean()

SELECT categoryid, supplierid, ROUND(AVG(unitprice)) AS avg_price
FROM products
GROUP BY categoryid, supplierid
ORDER BY categoryid, avg_price DESC;

-- If using GROUPBY: use HAVING instead of WHERE  **ok for me 
SELECT category_id, supplier_id, ROUND(AVG(unit_price)) AS avg_price
FROM products
GROUP BY category_id, supplier_id
HAVING (AVG(unit_price)) > 20
ORDER BY category_id, avg_price DESC


-- ORDER of !!!!!!!EXECUTION!!!!!---
1. FROM
2. WHERE
3. GROUP BY -> HAVING
4. SELECT -> DISTINCT  --unique()
5. ORDER BY
6. LIMIT
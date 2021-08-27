-- 1 Get the names and the quantities in stock for each product.

SELECT product_name, units_in_stock
FROM products
;

-- 2 Get a list of current products (Product ID and name).

SELECT product_id, product_name
FROM products
;

-- 3 Get a list of the most and least expensive products (name and unit price).
SELECT product_name, unit_price
FROM products
ORDER BY unit_price
LIMIT 10
;
SELECT product_name, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 10
;

-- Get products that cost less than $20.
SELECT product_name, unit_price
FROM products
WHERE unit_price < 20
ORDER BY unit_price
;
-- Get products that cost between $15 and $25.
SELECT product_name, unit_price
FROM products
WHERE unit_price BETWEEN 15 AND 25
ORDER BY unit_price
;

-- 6
SELECT product_name, unit_price
FROM products
GROUP BY product_name, unit_price
HAVING unit_price > 28
;
SELECT product_name, unit_price
FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products)
ORDER BY unit_price 
;


-- 7 Find the ten most expensive products.
SELECT product_name --, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 10
;
-- 8 Get a list of discontinued products (Product ID and name).
SELECT product_name --, unit_price
FROM products
WHERE discontinued = 1
ORDER BY product_name DESC
;
-- 9 Count current and discontinued products.

SELECT discontinued, COUNT(discontinued) AS discontinued_count
FROM products
GROUP BY discontinued
;
-- 10 Find products with less units in stock than the quantity on order.

-- 11 Find the customer who had the highest order amount
-- retourn just the number WHY DOES IT NEED BOTH AS
SELECT MAX(count_order)
FROM (SELECT orders.customer_id, COUNT(order_id) AS count_order
FROM orders
GROUP BY orders.customer_id) AS count_order;






SELECT customer_id
FROM (SELECT orders.customer_id, COUNT(order_id) AS count_order
FROM orders
GROUP BY orders.customer_id) AS count_order
WHERE count_order = MAX(count_order);


select top 1 with ties orders.customer_id
from orders
order by row_number() over (SELECT orders.customer_id, COUNT(order_id) AS count_order
FROM orders ORDER BY count_order DESC);

SELECT * 
FROM orders
	INNER JOIN ( SELECT order_id, MAX(score) AS Maxscore FROM class
	GROUP BY name) topscore ON class.name = topscore.name
	AND class.score = topscore.maxscore;

SELECT * 
FROM class
	INNER JOIN ( SELECT name, MAX(score) AS Maxscore FROM class
	GROUP BY name) topscore ON class.name = topscore.name
	AND class.score = topscore.maxscore;


-- 12 Get orders for a given employee and the according customer

-- 13 Find the hiring age of each employee

-- 14 Create views and/or named queries for some of these queries

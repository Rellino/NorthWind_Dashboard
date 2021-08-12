DROP TABLE IF EXISTS products;
CREATE TABLE products (
id SERIAL PRIMARY KEY, 
productID SERIAL, 
productName VARCHAR(50),
supplierID INTEGER,
categoryID INTEGER,
quantityPerUnit VARCHAR(50),
unitPrice REAL,
unitsInStock INTEGER,
unitsOnOrder INTEGER,
reorderLevel INTEGER, 
discontinued INTEGER);  

COPY products (productID, productName, supplierID, categoryID, quantityPerUnit, unitPrice, unitsInStock, unitsOnOrder, reorderLevel, discontinued) -- this is only if I have the first line the heather
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/products.csv'
DELIMITER ','
CSV HEADER; 
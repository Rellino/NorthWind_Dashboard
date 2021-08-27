-- This module generate the tables reading the csv file indicated: I need to write the columns name and type of data

--1) Categories

DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
-- id SERIAL PRIMARY KEY,
category_id SMALLINT,
category_name VARCHAR(50),
description VARCHAR(255),
pictures TEXT);

COPY categories(category_id,
category_name,
description,
pictures)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/categories.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL'; 

--2) Customers

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
-- id SERIAL PRIMARY KEY,
customer_id VARCHAR(5),
company_name VARCHAR(50),
contact_name VARCHAR(50),
contact_title VARCHAR(50),
address VARCHAR(50),
city VARCHAR(50),
region VARCHAR(50),
postal_code VARCHAR(50),
country VARCHAR(50),
phone VARCHAR(50),
fax VARCHAR(50));

COPY customers (customer_id,
company_name,
contact_name,
contact_title,
address,
city,
region,
postal_code,
country,
phone,
fax)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/customers.csv'
DELIMITER ','
CSV HEADER
NULL 'NULL';

--3) Employee territories

DROP TABLE IF EXISTS employee_territories;

CREATE TABLE employee_territories (

-- id SERIAL PRIMARY KEY,    
employee_id SMALLINT,
territory_id INTEGER

);

COPY employee_territories (employee_id,
territory_id)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/employee_territories.csv'
DELIMITER ','
CSV HEADER
NULL 'NULL';

--4) Employees

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
-- id SERIAL PRIMARY KEY,
employee_id SMALLINT, 
last_name VARCHAR(30), 
first_name VARCHAR(30), 
title VARCHAR, 
title_of_courtesy VARCHAR(30), 
birth_date TIMESTAMP,  
hire_date TIMESTAMP, 
address VARCHAR(30), 
city VARCHAR(30), 
region VARCHAR(30), 
postal_code VARCHAR,  
country VARCHAR(30), 
home_phone VARCHAR(30), 
extension INTEGER, 
photo VARCHAR, 
notes VARCHAR, 
reports_to VARCHAR,  
photo_path VARCHAR); 

COPY employees(employee_id,
last_name,
first_name,
title,
title_of_courtesy,
birth_date,
hire_date,
address,
city,
region,
postal_code,
country,
home_phone,
extension,
photo,
notes,
reports_to,
photo_path)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/employees.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL'; 

--5) Order details

DROP TABLE IF EXISTS order_details;

CREATE TABLE order_details (  
--id SERIAL PRIMARY KEY,
order_id INTEGER,
product_id INTEGER,
unit_price REAL,
quantity INTEGER,
discount REAL);

COPY order_details(order_id,
product_id,
unit_price,
quantity,
discount)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/order_details.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL';  

--6) Orders

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (     

-- id SERIAL PRIMARY KEY,   
order_id SMALLINT NOT NULL,
customer_id VARCHAR(5) NOT NULL,
employee_id SMALLINT NOT NULL,
order_date TIMESTAMP NOT NULL,
required_date TIMESTAMP NOT NULL,
shipped_date TIMESTAMP,  --TIMESTAMP DOES NOT WORK
ship_via SMALLINT NOT NULL,
freight DECIMAL NOT NULL,
ship_name VARCHAR(40) NOT NULL,
ship_address VARCHAR(50) NOT NULL,
ship_city VARCHAR (20) NOT NULL,
ship_region VARCHAR (20),
ship_postal_code VARCHAR (20),
ship_country VARCHAR (20) NOT NULL
);

COPY orders(order_id,
customer_id,
employee_id,
order_date,
required_date,
shipped_date,
ship_via,
freight,
ship_name,
ship_address,
ship_city,
ship_region,
ship_postal_code,
ship_country) 
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/orders.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL'; -- this is for treating NULL strings as NULL values  

--7) Products

DROP TABLE IF EXISTS products;

CREATE TABLE products (
product_id SMALLINT, 
product_name VARCHAR(50),
supplier_id INTEGER,
category_id INTEGER,
quantity_per_unit VARCHAR(50),
unit_price REAL,
units_in_stock INTEGER,
units_on_order INTEGER,
reorder_level INTEGER, 
discontinued INTEGER); 

COPY products(product_id,
product_name,
supplier_id,
category_id,
quantity_per_unit,
unit_price,
units_in_stock,
units_on_order,
reorder_level, 
discontinued) 
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/products.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL';  

--8) Regions

DROP TABLE IF EXISTS regions;

CREATE TABLE regions (

-- id SERIAL PRIMARY KEY,    
region_id SMALLINT,
region_description VARCHAR(10)

);

COPY regions(region_id,
region_description)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/regions.csv'
DELIMITER ','
CSV HEADER
NULL 'NULL';

--9) Shippers

DROP TABLE IF EXISTS shippers;

CREATE TABLE shippers (
-- id SERIAL PRIMARY KEY,
shipper_id SMALLINT,
company_name VARCHAR(20),
phone VARCHAR(20));

COPY shippers(shipper_id,
company_name,
phone)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/shippers.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL'; 

--10) Suppliers

DROP TABLE IF EXISTS suppliers;

CREATE TABLE suppliers (

-- id SERIAL PRIMARY KEY,    
supplier_id SMALLINT,
company_name VARCHAR(50) NOT NULL,
contact_name VARCHAR(30) NOT NULL,
contact_title VARCHAR(35) NOT NULL,
address VARCHAR(50) NOT NULL,
city VARCHAR(20) NOT NULL,
region VARCHAR(20), 
postal_code VARCHAR(30),
country VARCHAR(40),
phone VARCHAR(20),
fax VARCHAR(20),
home_page VARCHAR(100)

);


COPY suppliers (supplier_id,
company_name,
contact_name,
contact_title,
address,
city,
region,
postal_code,
country,
phone,
fax,
home_page)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/suppliers.csv'
DELIMITER ','
CSV HEADER
NULL 'NULL';

--11) Territories

DROP TABLE IF EXISTS territories;
CREATE TABLE territories (
-- id SERIAL PRIMARY KEY,
territory_id REAL,
territory_description VARCHAR(20) NOT NULL,
region_id INTEGER); 

COPY territories(territory_id,
territory_description,
region_id)
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/territories.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL'; 

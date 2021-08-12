DROP TABLE IF EXISTS territories;
CREATE TABLE territories ( 
id SERIAL PRIMARY KEY,   
territoryID REAL,     
territoryDescription VARCHAR(20) NOT NULL,
regionID INTEGER);  

COPY territories (territoryID, territoryDescription, regionID) -- this is only if I have the first line the heather
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/northwind_data_clean-master/data/territories.csv'
DELIMITER ','
CSV HEADER;  -- this is the title o
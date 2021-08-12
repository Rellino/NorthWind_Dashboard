DROP TABLE country_code IF EXISTS;

CREATE TABLE country_code (
country_name VARCHAR(70),
code VARCHAR(3))
;
COPY country_code (country_name,
code)
FROM '/Users/Laura/Desktop/CountryNamesAbbreviations.csv'
DELIMITER ',' 
CSV HEADER
NULL 'NULL'; 


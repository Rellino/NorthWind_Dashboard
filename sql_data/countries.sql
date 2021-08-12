DROP TABLE IF EXISTS countries;
CREATE TABLE countries (  --IF NOT EXISTS after the create table
id SERIAL PRIMARY KEY,   ---this creat a kind of index an id column and in a serial and is not NULL to unique identiy the row and PRIMARY KEY is a constrained restict even further wha I can put in the col li
country VARCHAR(50) NOT NULL,     --col names: lover case and no withespace  UNIQUE I can also add this constrictions
population INTEGER,
fertility REAL,
continent VARCHAR(20));  

-- -- I have to 
-- INSERT INTO countries (
--     country, population, fertility, continent)
--     VALUES ('Bangladesh', 160995642, 2.12, 'Asia')
-- ;
-- We do not want to do it manually!!

-- --Linux and mac:
COPY countries (country, population, fertility, continent) -- this is only if I have the first line the heather
FROM '/Users/Laura/Desktop/SPICED_Course/mycode/colime-similarity-student-code/week_05/large_countries_2015.csv'
DELIMITER ','
CSV HEADER;  -- this is the title of the heather

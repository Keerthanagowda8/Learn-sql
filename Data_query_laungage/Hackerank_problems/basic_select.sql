
--- The Weather Observation Station 5 table is described as follows:
---
-- Column	Name	Type    
-- 1	station_id	INT
-- 2	station_name	VARCHAR(255)
-- 3	city	        VARCHAR(255)
-- 4	state	        VARCHAR(255)
-- 5	country	        VARCHAR(255)
-- 6	latitude	DOUBLE
-- 7	longitude	DOUBLE
-- 8	elevation	INT
--- Task
---

-- Write a query that prints the names of countries having their city name starting with vowels (i.e., A, E, I, O, U).
--- The query result should be ordered alphabetically by the name of the country.
--- oraclesql

SELECT DISTINCT country
FROM station
WHERE city LIKE 'A%' OR city LIKE 'E%' OR city LIKE 'I%' OR city LIKE 'O%' OR city LIKE 'U%'
ORDER BY country;


--- Problem: Weather Observation Station 5
--- 
-- question:  https://hackerrank-challenge-pdfs.s3.amazonaws.com/9340-weather-observation-station-5-English?response-content-disposition=inline%3B%20filename%3Dweather-observation-station-5-English.pdf&response-content-type=application%2Fpdf&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAR6O7GJNX5DNFO3PV%2F20250912%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250912T174922Z&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=0b10b74a0eac785b0a097665be022db49b8a643a84552db2e625f28e2892a711

--- Write a query that prints the city name with the shortest and longest length.
--- If there are multiple cities with the same length, print the city which comes first in alphabetical order.
--- The query result should contain 2 lines.
--- oraclesql

SELECT CITY, LEN 
FROM (SELECT CITY, LENGTH(CITY) AS LEN
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC)
WHERE ROWNUM = 1
UNION ALL
SELECT CITY, LEN 
FROM (SELECT CITY, LENGTH(CITY) AS LEN
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC)
WHERE ROWNUM = 1;


select * from city where countrycode='USA' and population>100000;

select name from city where countrycode='USA' and population>120000;

select * from city where id='1661';

select * from city where countrycode='JPN';

SELECT NAME FROM CITY WHERE COUNTRYCODE='JPN';

SELECT CITY,STATE FROM STATION;

SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0;

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION ;

select distinct city from station where 
city like 'A%' or 
city like 'E%' or 
city like 'I%' or 
city like 'O%' or 
city like 'U%';

select distinct city from station where 
city like '%a' or 
city like '%e' or
city like '%i' or
city like '%o' or
city like '%u' ;

select distinct city from station where city like 'A%a'or city like 'A%e'or city like 'A%i'or city like 'A%o'or city like 'A%u'or city like 'E%a'or city like 'E%e'or city like 'E%i'or city like 'E%o'or city like 'E%u'or city like 'I%a'or city like 'I%e'or city like 'I%i'or city like 'I%o'or city like 'I%u'or city like 'O%a'or city like 'O%e'or city like 'O%i'or city like 'O%o'or city like 'O%u'or city like 'U%a'or city like 'U%e'or city like 'U%i'or city like 'U%o'or city like 'U%u';
or 
select distinct city from station where substr(city,1,1)in('A','E','I','O','U') and substr(city,-1,1) in ('a','e','i','o','u');

select DISTINCT city from station where substr(city,1,1) not in ('A','E','I','O','U');

SELECT distinct CITY FROM STATION WHERE SUBSTR(CITY,-1,1) NOT IN('a','e','i','o','u');

select distinct city from station WHERE
upper(substr(city,1,1)) not in ('A','E','I','O','U') or
upper(substr(city,-1,1)) not in ('A','E','I','O','U');

select distinct city from station WHERE upper(substr(city,1,1)) not in ('A','E','I','O','U') and
upper(substr(city,-1,1)) not in ('A','E','I','O','U');

select name from students where marks>75
order by substr(name,-3,3) asc,id asc;


select name from employee 
order by name asc;


select name from employee where
salary>2000 
and 
months<10
order by employee_id asc;

select sum(city.population) 
from city , country where 
city.countrycode=country.code and continent='Asia';

select city.name from city,country WHERE
city.countrycode =  country.code and country.continent='Africa';

SELECT country.continent, trunc(avg(city.population)) FROM
city,country where city.countrycode=country.code
GROUP by country.continent;

select name||'('||substr(occupation,1,1)||')'
from occupations 
order by name asc; 
select 
'There are a total of '|| count(*)|| ' ' || lower(occupation) || 's.'
 from occupations
 group by occupation
 order by count(*) asc,occupation asc;
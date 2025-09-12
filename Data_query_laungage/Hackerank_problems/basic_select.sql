
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
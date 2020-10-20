/* Project Goals
You’ll work with a dataset of world population by country data from recent years. You’ll write queries to retrieve interesting data and answer a set of specific questions. */

-- What years are covered by the dataset? (you can manually count the number of years returned).

SELECT DISTINCT year 
FROM population_years;

-- What is the largest population size for Gabon in this dataset?

SELECT * 
FROM population_years 
WHERE country='Gabon' 
ORDER BY population DESC
LIMIT 1;

-- What were the 10 lowest population countries in 2005?

SELECT * 
FROM population_years
WHERE population IS NOT NULL
ORDER BY population ASC
LIMIT 10;

-- What are all the distinct countries with a population of over 100 million in the year 2010?

SELECT DISTINCT country
FROM population_years
WHERE population > 1
  AND year = 2010;

-- How many countries in this dataset have the word “Islands” in their name?

SELECT COUNT(*) AS 'Islands' 
FROM population_years 
WHERE country LIKE '%Islands%';

-- What is the difference in population between 2000 and 2010 in Indonesia?

SELECT population
FROM population_years 
WHERE country = 'Indonesia' AND year = 2000
OR country = 'Indonesia' AND year = 2010;

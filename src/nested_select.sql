-- https://sqlzoo.net/wiki/Using_nested_SELECT

-- Using SELECT in SELECT
-- See SELECT FROM SELECT for how to use a derived table. (https://sqlzoo.net/wiki/SELECT_.._SELECT)
-- The result of a SELECT statement may be used as a value in another statement. For example the statement SELECT continent FROM world WHERE name = 'Brazil' evaluates to 'South America' so we can use this value to obtain a list of all countries in the same continent as 'Brazil'

-- 1. List each country in the same continent as 'Brazil'.
SELECT name
  FROM world
 WHERE continent = (SELECT continent FROM world WHERE name = 'Brazil')

-- Alias
-- Some versions of SQL insist that you give the subquery an alias. Simply put `AS somename` after the closing bracket:
SELECT name FROM world WHERE continent = 
  (SELECT continent FROM world WHERE name='Brazil') AS brazil_continent

-- Multiple Results
-- The subquery may return more than one result - if this happens the query above will fail as you are testing one value against more than one value. It is safer to use IN to cope with this possibility.
-- The phrase `(SELECT continent FROM world WHERE name = 'Brazil' OR name='Mexico')` will return two values ('North America' and 'South America'). You should use:
SELECT name, continent
  FROM world
 WHERE continent IN (SELECT continent FROM world WHERE name = 'Brazil' OR name = 'Mexico')

-- 2. List each country and its continent in the same continent as 'Brazil' or 'Mexico'.
SELECT name, continent
  FROM world
 WHERE continent IN (SELECT continent FROM world WHERE name = 'Brazil' OR name = 'Mexico')

-- Subquery on the SELECT line
-- If you are certain that only one value will be returned you can use that query on the SELECT line.

-- 3. Show the population of China as a multiple of the population of the United Kingdom
SELECT population/(SELECT population FROM world WHERE name = 'United Kingdom')
  FROM world
 WHERE name = 'China'

-- Operators over a set
-- These operators are binary - they normally take two parameters:
-- =     equals
-- >     greater than
-- <     less than
-- >=    greater or equal
-- <=    less or equal
-- You can use the words ALL or ANY where the right side of the operator might have multiple values.

-- 4. Show each country that has a population greater than the population of ALL countries in Europe. Note that we mean greater than every single country in Europe; not the combined population of Europe.
SELECT name
  FROM world
 WHERE population > ALL(SELECT population FROM world WHERE continent = 'Europe')

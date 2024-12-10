-- https://sqlzoo.net/wiki/SELECT_.._SELECT

-- Subquery Table, Derived Tables, Nested Queries
-- You can use the results from one query in another query

-- Subquery with FROM
-- 1. You may use a `SELECT` statement in the `FROM` line.
-- In this case the derived table `X` has columns `name` and `gdp_per_capita`. The calculated values in the inner `SELECT` can be used in the outer `SELECT`.
-- Notice that
-- the inner table is given an alias X
-- the first column in the inner query keeps its name
-- the second column in the inner query has an alias
SELECT name, gdp_per_capita
  FROM (SELECT name, gdp/population AS gdp_per_capita
          FROM world) X
         WHERE gdp_per_capita > 20000

-- Subquery with IN
-- 2. Find the countries in the same continent as Bhutan
-- You may use a `SELECT` statement in the `WHERE` line - this returns a list of continent.
SELECT name
  FROM world
 WHERE continent IN (SELECT continent FROM world WHERE name = 'Bhutan')

-- Correlated Subquery
-- 3. If a value from the outer query appears in the inner query this is "correlated subquery".
-- Show the countries where the population is greater than 5 times the average for its region.
SELECT name
  FROM bbc x
  WHERE population > 5 * (SELECT AVG(population)
                            FROM bbc 
                            WHERE region = x.region)

-- https://sqlzoo.net/wiki/SELECT_.._JOIN

-- The SELECT .. JOIN statement
-- Sometimes you need to access two or more tables to get the data required.

-- 1. You can use a JOIN to get results from two or more related tables. In this example each row of the table g`ames` is related to a row of the table `city`. If you want to find the country where the games took place you must JOIN the games table to the city table on the common field that is games.city and city.name
SELECT games.yr, city.country
  FROM games JOIN city ON (games.city = city.name)
  
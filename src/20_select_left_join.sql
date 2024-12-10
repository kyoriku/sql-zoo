-- https://sqlzoo.net/wiki/LEFT_JOIN

-- The SELECT .. LEFT JOIN statement
-- The LEFT JOIN will include rows from the left table even when the linking value is null.

-- games
-- yr	   city
-- 2004	 Athens
-- 2008	 Beijing
-- 2012	 London
-- 2032	

-- city
-- name	    country
-- Sydney	  Australia
-- Athens	  Greece
-- Beijing	China
-- London	  UK

-- 1. There is no data on where the 2032 games will be held. The LEFT JOIN will include a row for 2032 even though it has no corresponding city.
SELECT games.yr, city.country
  FROM games LEFT JOIN city
       ON (games.city = city.name)

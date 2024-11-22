-- https://sqlzoo.net/wiki/Aggregates_with_DISTINCT

-- COUNT DISTINCT
-- You can find the number of different values using COUNT with DISTINCT

-- In 1915 four prizes were awarded in three different subjects:

-- SELECT yr, subject, winner
--   FROM nobel
--  WHERE yr=1915

-- yr	    subject	     winner
-- 1915	  Chemistry	   Richard Willstätter
-- 1915	  Literature	 Romain Rolland
-- 1915	  Physics	     Lawrence Bragg
-- 1915	  Physics	     William Bragg

-- 1. COUNT(subject) gives 4; COUNT(DISTINCT subject) gives 3.
SELECT COUNT(subject), COUNT(DISTINCT subject)
  FROM nobel
 WHERE yr = 1915
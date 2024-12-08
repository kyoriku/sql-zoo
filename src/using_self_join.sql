-- https://sqlzoo.net/wiki/Using_a_self_join

-- Using a self join

-- Edinburgh Buses: self join
-- A table may be joined with itself. When this happens we need some mechanism for distinguishing the instances of the table. Labels may be introduced in the FROM clause - a dot is used to separate the label and attribute name when used elsewhere in the statement.

-- Examples of self joins on the route table
-- Self join of route on (num, company)
-- We might join the route table on the (num, company) pair. The result is a list of all pairs of stops which share a service.

SELECT * FROM route R1, route R2
  WHERE R1.num=R2.num AND R1.company=R2.company

-- This is a large table with over 11000 entries. An extract is shown below. There are 121 entries for the LRT 1 service alone. There are 11 stops on the number 1. It is a circular route - the first and last stops are identical.

-- num	company	pos	stop	num_1	company_1	pos_1	stop_1
-- 1	LRT	1	134	1	LRT	7	217
-- 1	LRT	1	134	1	LRT	11	134
-- 1	LRT	1	134	1	LRT	10	79
-- ...
-- 1	LRT	2	97	1	LRT	7	217
-- 1	LRT	2	97	1	LRT	11	134
-- ...
-- 2	LRT	9	31	2	LRT	11	217
-- 2	LRT	9	31	2	LRT	1	168
-- ...

-- Self join of route on stop
-- We might join the route table with itself on the stop field. The result is a list of all pairs of services which share a stop.

SELECT * FROM route R1, route R2
  WHERE R1.stop=R2.stop;

-- In the extract below some of the entries for stop 53, 'Craiglockhart' are shown.

-- num	company	pos	stop	num_1	company_1	pos_1	stop_1
-- 47	LRT	4	53	47	LRT	4	53
-- 47	LRT	4	53	27	LRT	6	53
-- 47	LRT	4	53	10	LRT	8	53
-- 47	LRT	4	53	45	LRT	7	53
-- 47	LRT	4	53	4	LRT	6	53
-- 10	LRT	8	53	47	LRT	4	53
-- 10	LRT	8	53	27	LRT	6	53
-- 10	LRT	8	53	10	LRT	8	53
-- ...

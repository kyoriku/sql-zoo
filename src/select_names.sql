-- https://sqlzoo.net/wiki/SELECT_names

-- 1. You can use WHERE name LIKE ‘B%’ to find the countries that start with “B”. The % is a wild-card, it can match any characters. Find the country that starts with Y.
SELECT name FROM world
  WHERE name LIKE 'Y%'

-- 2. You can use WHERE name LIKE ‘%a’ to find the countries that end with “a”. Find the countries that end with y.
SELECT name FROM world
  WHERE name LIKE '%y'

-- 3. Luxembourg has an x - so does one other country. List them both. Find the countries that contain the letter x.
SELECT name FROM world
  WHERE name LIKE '%x%'

-- 4. Iceland, Switzerland end with land - but are there others? Find the countries that end with land.
SELECT name FROM world
  WHERE name LIKE '%land'

-- 5. Colombia starts with a C and ends with ia - there is just one more country with this pattern. Find the countries that start with C and end with ia.
SELECT name FROM world
  WHERE name LIKE 'C%ia'

-- 6. Greece has a double e - who has a double o? Find the countries that have oo in the name.
SELECT name FROM world
  WHERE name LIKE '%oo%'

-- 7. Bahamas has three a - who else? Find the countries that have three a in the name.
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

-- 8. India and Angola have an n as the second character. You can use the underscore as a single character wildcard. Find the countries that have "t" as the second character.
SELECT name FROM world
  WHERE name LIKE '_t%'
  ORDER BY name

-- 9. Lesotho and Moldova both have two o characters separated by two other characters. Find the countries that have two "o" characters separated by two others.
SELECT name FROM world
  WHERE name LIKE '%o__o%'

-- 10. Cuba and Togo have four characters names. Find the countries that have exactly four characters.
SELECT name FROM world
  WHERE name LIKE '____'

-- 11. The capital of Luxembourg is Luxembourg. Show all the countries where the capital is the same as the name of the country.
SELECT name FROM world
  WHERE name = capital

-- 12. The capital of Mexico is Mexico City. Show all the countries where the capital has the country together with the word "City". You can use the CONCAT function to combine the name and the suffix. (https://sqlzoo.net/wiki/CONCAT
SELECT name FROM world
  WHERE capital = CONCAT(name, ' City')

-- 13. Find the country where the name is the capital city.
SELECT capital, name FROM world
  WHERE capital LIKE CONCAT('%', name, '%')

-- 14. Find the capital and the name where the capital is an extension of name of the country. You should include Mexico City as it is longer than Mexico. You should not include Luxembourg as the capital is the same as the country.
SELECT capital, name FROM world
  WHERE capital LIKE CONCAT(name, '%') AND capital != name

-- 15. The capital of Monaco is Monaco-Ville: this is the name Monaco and the extension is -Ville. Show the name and the extension where the capital is a proper (non-empty) extension of name of the country. You can use the SQL function REPLACE (https://sqlzoo.net/wiki/REPLACE).
SELECT name, REPLACE(capital, name, '') AS extension FROM world
  WHERE capital LIKE CONCAT(name, '%') AND capital != name

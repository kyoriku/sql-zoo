# SQL Zoo
*SQL Query Exercises from SQLZoo*

## Overview
This repository contains a collection of SQL query exercises from [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial), a free online platform for learning SQL. These exercises cover a variety of SQL concepts, including filtering records, using aggregate functions, joining tables, and more. The exercises are designed to help strengthen SQL skills and solidify knowledge of SQL syntax and querying techniques.

## Contents
Each file in this repository covers specific SQL concepts and exercises. The files are listed in the recommended order of completion, following SQLZoo's tutorial structure. Each .sql file begins with a link to its corresponding SQLZoo tutorial section.


### Basic SQL Queries
1. **select_basics.sql**: Introduction to basic SQL queries, including selecting data, using `WHERE` clauses, and filtering results based on conditions.
2. **where_filters.sql**: Exercises focused on filtering records using various SQL conditions like `IN`, `BETWEEN`, and `LIKE`.
3. **select_names.sql**: Querying exercises involving string pattern matching using `LIKE` for selecting country names based on specific patterns and conditions.
4. **select_quiz.sql**: A series of quiz-like exercises designed to test and reinforce understanding of basic SQL queries and result predictions.
5. **select_from_world.sql**: Queries using the world table to practice basic `SELECT` statements and filtering records by attributes like population, area, and GDP.
6. **bbc_quiz.sql**: A set of exercises from the BBC Quiz on SQLZoo, focusing on querying data from the world table, including filters, conditional logic, and correcting SQL syntax errors.

### Nobel Prize Database Queries
7. **select_from_nobel.sql**: A series of exercises querying the nobel table, focusing on selecting data based on year, subject, winner, and applying various SQL conditions like `IN`, `LIKE`, and `ORDER BY`.
8. **nobel_quiz.sql**: Practice questions focused on querying the nobel table, including pattern matching with `LIKE`, counting results with `COUNT`, and using subqueries to filter data based on specific award criteria.

### Nested Queries and Subqueries
9. **nested_select.sql**: Examples and exercises demonstrating nested `SELECT` queries (subqueries), including using single-value subqueries, working with multiple results using `IN`, and comparing values using `ALL` operator.
10. **subquery_select.sql**: Examples demonstrating different types of `SELECT` subqueries, including derived tables in `FROM` clause, subqueries with `IN,` and correlated subqueries for comparing values within regions.
11. **select_in_select.sql**: Advanced exercises on nested `SELECT` queries using the world table, covering comparisons with subqueries, correlated subqueries, and the `ALL` operator.
12. **nested_select_quiz.sql**: Practice questions on nested `SELECT` queries using the BBC database, focusing on comparing regional data, population statistics, and GDP values using subqueries and the `ALL` operator.

### Aggregate Functions and Grouping
13. **aggregate_queries.sql**: Introduction to SQL aggregate functions (`SUM`, `COUNT`, `MAX`, `AVG`), using `DISTINCT` to remove duplicates, and `ORDER BY` for sorting results using the BBC database.
14. **group_queries.sql**: Examples of using `GROUP BY` clause to aggregate data by groups, and `HAVING` clause to filter grouped results, demonstrated with population statistics from the world table.
15. **sum_count.sql**: Practical exercises using aggregate functions `SUM` and `COUNT`, combined with `GROUP BY` and `HAVING` clauses to analyze world population and continental statistics from the world table.
16. **distinct_aggregates.sql**: Examples demonstrating the use of `COUNT` with `DISTINCT` keyword to count unique values, illustrated using the nobel prize database to analyze award distributions.
17. **nobel_sum_count.sql**: Comprehensive exercises using aggregate functions (`COUNT`, `SUM`, `MIN`) and `GROUP BY` with the nobel prize database to analyze prize distributions, multiple winners, and award patterns across years and subjects.
18. **sum_count_quiz.sql**: Practice questions testing understanding of SQL aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`), `GROUP BY` usage, and population density calculations using the BBC database.

### JOIN Operations
19. **select_join.sql**: Introduction to SQL `JOIN` operations, demonstrating how to combine data from multiple related tables using common fields, illustrated with games and city tables.
20. **select_left_join.sql**: Introduction to `LEFT JOIN` operations, demonstrating how to retrieve all records from the left table and matching records from the right table, illustrated using games and city tables for handling null cases.
21. **music_joins.sql**: Practice exercises combining `JOIN` operations with aggregate functions using a music database, demonstrating relationships between albums and tracks, including counting songs, filtering by title, and calculating price per track.
22. **joins.sql**: Complex `JOIN` exercises using UEFA EURO 2012 database, combining multiple tables (game, goal, and eteam) to analyze matches, goals, and team statistics, including aggregation and `CASE WHEN` statements.
23. **old_joins.sql**: Practice `JOIN` operations using Olympic table tennis data, combining competition tables (teams, winners, games) to analyze medal winners, countries, and tournament results across different events.
24. **join_quiz.sql**: Practice questions testing understanding of SQL `JOIN` operations, including selecting correct `JOIN` conditions, identifying valid column names, and analyzing football match statistics.

### More JOIN Operations
25. **more_joins.sql**: Advanced `JOIN` operations using a movie database, combining actor, movie, and casting tables to analyze film appearances, starring roles, and actor collaborations.
26. **movie_joins.sql**: Fundamental explanation of `JOIN` operations using a movie database, demonstrating how to combine two and three tables using common fields and handle non-unique field names.
27. **join_quiz_2.sql**: Additional practice questions on SQL `JOIN`s, focusing on multi-table joins, sorting results, and analysis of movie database relationships between actors, directors, and films.

### NULL Values and Conditional Logic
28. **null_values.sql**: Example demonstrating how to handle NULL values in SQL queries using `IS NULL` operator, illustrated with parliament party data.
29. **using_coalesce.sql**: Example demonstrating use of the `COALESCE` function to handle NULL values by returning the first non-NULL value from a list of expressions.
30. **using_case.sql**: Example demonstrating use of the `CASE` statement to return different values based on specified conditions, illustrated with population size categorization.
31. **using_null.sql**: Comprehensive exercises on handling NULL values in SQL, combining `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` with `COALESCE` and `CASE` statements using a school database of teachers and departments.
32. **null_quiz.sql**: Practice questions on handling NULL values in SQL, testing understanding of outer joins, `COALESCE` function, and `CASE` statements using a teacher and department database.

### Advanced SQL Functions and Analysis
33. **numeric_examples.sql**: Complex calculations and aggregate functions using student survey data, including percentage calculations and grouped statistics.
34. **window_functions.sql**: Introduction to window functions using election data, demonstrating `RANK()` and `PARTITION BY` for analyzing voting patterns.

### Self JOIN Operations
36. **using_self_join.sql**: Explanation of self `JOIN` concepts with examples using Edinburgh bus routes, demonstrating how to join a table with itself using different matching conditions.
37. **self_join.sql**: Complex exercises using self `JOIN` operations to analyze bus routes and stops, including finding connections between stops, transfer points, and multiple route options using Edinburgh bus data.
38. **self_join_quiz.sql**: Practice questions testing understanding of self `JOIN` operations, focusing on analyzing bus route connections and services using the Edinburgh transport database.

## Getting Started
### Prerequisites
No local database setup is required. These SQL exercises are designed to be completed on [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial), an online platform that provides interactive SQL tutorials with built-in databases and real-time query execution.

### Usage
While these files serve as a reference for SQLZoo solutions, to practice and run these queries:

1. Visit [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial)
2. Navigate to the corresponding tutorial section
3. Use their interactive interface to write and execute queries
4. Reference these solutions after attempting the exercises yourself

You can also clone this repository to review the solutions locally:
```bash
git clone https://github.com/kyoriku/sql-zoo.git
```

## Learning Goals
These exercises helped me build hands-on experience in the following areas:

- Basic SQL Operations:
  - Writing SQL queries using `SELECT` statements to retrieve specific data from tables
  - Utilizing `WHERE` clauses to filter records based on conditions and comparisons
  - Applying pattern matching with `LIKE` and filtering with `IN`, `BETWEEN` operators
  - Using `ORDER BY` for sorting and `DISTINCT` to remove duplicates

- Aggregate Functions and Grouping:
  - Using aggregate functions (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`) for data analysis
  - Grouping data with `GROUP BY` and filtering groups with `HAVING` clauses
  - Combining aggregate functions with joins for complex data analysis

- JOIN Operations:
  - Understanding different types of joins: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`
  - Combining multiple tables using common fields
  - Working with self joins to analyze hierarchical or self-referential data
  - Using joins with aggregate functions for comprehensive data analysis

- Advanced SQL Concepts:
  - Creating and using subqueries in `SELECT`, `FROM`, and `WHERE` clauses
  - Handling NULL values using `IS NULL`, `COALESCE`, and outer joins
  - Using `CASE` statements for conditional logic in queries
  - Writing correlated subqueries for row-by-row processing

- Problem-Solving Skills:
  - Breaking down complex queries into manageable steps
  - Choosing appropriate SQL operations for different data analysis needs
  - Understanding and optimizing query performance
  - Reinforcing SQL knowledge through practical exercises and quizzes

## Acknowledgments
The exercises in this repository are based on the interactive tutorials from [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial). This platform provides a great way to practice SQL in a hands-on manner and is an excellent resource for SQL learners at all levels.

## License
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge&logo=mit)](https://opensource.org/licenses/MIT)

This project is licensed under the [MIT](https://opensource.org/licenses/MIT) license - see the LICENSE file for details.

## Questions
If you have any questions, feel free to reach out at devkyoriku@gmail.com.
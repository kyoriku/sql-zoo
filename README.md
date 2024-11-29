# SQL Zoo
*SQL Query Exercises from SQLZoo*

## Overview
This repository contains a collection of SQL query exercises from [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial), a free online platform for learning SQL. These exercises cover a variety of SQL concepts, including filtering records, using aggregate functions, joining tables, and more. The exercises are designed to help strengthen SQL skills and solidify knowledge of SQL syntax and querying techniques.

## Contents
Each file in this repository covers specific SQL concepts and exercises:

1. **select_basics.sql**: Introduction to basic SQL queries, including selecting data, using `WHERE` clauses, and filtering results based on conditions.
2. **where_filters.sql**: Exercises focused on filtering records using various SQL conditions like `IN`, `BETWEEN`, and `LIKE`.
3. **select_names.sql**: Querying exercises involving string pattern matching using `LIKE` for selecting country names based on specific patterns and conditions.
4. **select_quiz.sql**: A series of quiz-like exercises designed to test and reinforce understanding of basic SQL queries and result predictions.
5. **select_from_world.sql**: Queries using the world table to practice basic `SELECT` statements and filtering records by attributes like population, area, and GDP.
6. **bbc_quiz.sql**: A set of exercises from the BBC Quiz on SQLZoo, focusing on querying data from the world table, including filters, conditional logic, and correcting SQL syntax errors.
7. **select_from_nobel.sql**: A series of exercises querying the nobel table, focusing on selecting data based on year, subject, winner, and applying various SQL conditions like `IN`, `LIKE`, and `ORDER BY`.
8. **nobel_quiz.sql**: Practice questions focused on querying the nobel table, including pattern matching with `LIKE`, counting results with `COUNT`, and using subqueries to filter data based on specific award criteria.
9. **nested_select.sql**: Examples and exercises demonstrating nested `SELECT` queries (subqueries), including using single-value subqueries, working with multiple results using `IN`, and comparing values using `ALL` operator.
10. **subquery_select.sql**: Examples demonstrating different types of `SELECT` subqueries, including derived tables in `FROM` clause, subqueries with `IN,` and correlated subqueries for comparing values within regions.
11. **select_in_select.sql**: Advanced exercises on nested `SELECT` queries using the world table, covering comparisons with subqueries, correlated subqueries, and the `ALL` operator for finding population and GDP relationships between countries.
12. **nested_select_quiz.sql**: Practice questions on nested `SELECT` queries using the BBC database, focusing on comparing regional data, population statistics, and GDP values using subqueries and the `ALL` operator.
13. **aggregate_queries.sql**: Introduction to SQL aggregate functions (`SUM`, `COUNT`, `MAX`, `AVG`), using `DISTINCT` to remove duplicates, and `ORDER BY` for sorting results using the BBC database.
14. **group_queries.sql**: Examples of using `GROUP BY` clause to aggregate data by groups, and `HAVING` clause to filter grouped results, demonstrated with population statistics from the world table.
15. **sum_count.sql**: Practical exercises using aggregate functions `SUM` and `COUNT`, combined with `GROUP BY` and `HAVING` clauses to analyze world population and continental statistics from the world table.
16. **distinct_aggregates.sql**: Examples demonstrating the use of `COUNT` with `DISTINCT` keyword to count unique values, illustrated using the nobel prize database to analyze award distributions.
17. **nobel_sum_count.sql**: Comprehensive exercises using aggregate functions (`COUNT`, `SUM`, `MIN`) and `GROUP BY` with the nobel prize database to analyze prize distributions, multiple winners, and award patterns across years and subjects.
18. **sum_count_quiz.sql**: Practice questions testing understanding of SQL aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`), `GROUP BY` usage, and population density calculations using the BBC database.
19. **select_join.sql**: Introduction to SQL `JOIN` operations, demonstrating how to combine data from multiple related tables using common fields, illustrated with games and city tables.
20. **select_left_join.sql**: Introduction to `LEFT JOIN` operations, demonstrating how to retrieve all records from the left table and matching records from the right table, illustrated using games and city tables for handling null cases.
21. **music_joins.sql**: Practice exercises combining `JOIN` operations with aggregate functions using a music database, demonstrating relationships between albums and tracks, including counting songs, filtering by title, and calculating price per track.
22. **joins.sql**: Complex `JOIN` exercises using UEFA EURO 2012 database, combining multiple tables (game, goal, and eteam) to analyze matches, goals, and team statistics, including aggregation and `CASE WHEN` statements.
23. **old_joins.sql**: Practice `JOIN` operations using Olympic table tennis data, combining competition tables (teams, winners, games) to analyze medal winners, countries, and tournament results across different events.
24. **join_quiz.sql**: Practice questions testing understanding of SQL `JOIN` operations, including selecting correct `JOIN` conditions, identifying valid column names, and analyzing football match statistics.
25. **more_joins.sql**: Advanced `JOIN` operations using a movie database, combining actor, movie, and casting tables to analyze film appearances, starring roles, and actor collaborations.

## Getting Started

### Prerequisites
To run these SQL queries, you need access to a SQL-compatible database. **Note that this repository does not include any databases, so you will need to set one up yourself.** You can use platforms like [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial) for practice or set up a local database using [MySQL](https://www.mysql.com/), [PostgreSQL](https://www.postgresql.org/), or any other relational database management system (RDBMS).

### Usage
Clone this repository to your local machine using the following command:
```bash
    git clone https://github.com/kyoriku/sql-zoo.git
```

To run the queries, open the `.sql` files with your preferred SQL editor or integrated development environment (IDE) like [MySQL Workbench](https://www.mysql.com/products/workbench/) or [DBeaver](https://dbeaver.io/), and execute the queries against a database.

## Acknowledgments
The exercises in this repository are based on the interactive tutorials from [SQLZoo](https://sqlzoo.net/wiki/SQL_Tutorial). This platform provides a great way to practice SQL in a hands-on manner and is an excellent resource for SQL learners at all levels.

## License
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge&logo=mit)](https://opensource.org/licenses/MIT)

This project is licensed under the [MIT](https://opensource.org/licenses/MIT) license - see the LICENSE file for details.

## Questions
If you have any questions, feel free to reach out at devkyoriku@gmail.com.
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
5. **select_from_world.sql**: Queries using the `world` table to practice basic `SELECT` statements and filtering records by attributes like population, area, and GDP.
6. **bbc_quiz.sql**: A set of exercises from the BBC Quiz on SQLZoo, focusing on querying data from the `world` table, including filters, conditional logic, and correcting SQL syntax errors.
7. **select_from_nobel.sql**: A series of exercises querying the `nobel` table, focusing on selecting data based on year, subject, winner, and applying various SQL conditions like `IN`, `LIKE`, and `ORDER BY`.
8. **nobel_quiz.sql**: Practice questions focused on querying the `nobel` table, including pattern matching with `LIKE`, counting results with `COUNT`, and using subqueries to filter data based on specific award criteria.
9. **nested_select.sql**: Examples and exercises demonstrating nested `SELECT` queries (subqueries), including using single-value subqueries, working with multiple results using `IN`, and comparing values using `ALL` operator.
10. **subquery_select.sql**: Examples demonstrating different types of `SELECT` subqueries, including derived tables in `FROM` clause, subqueries with `IN,` and correlated subqueries for comparing values within regions.
11. **select_in_select.sql**: Advanced exercises on nested `SELECT` queries using the `world` table, covering comparisons with subqueries, correlated subqueries, and the `ALL` operator for finding population and GDP relationships between countries.
12. **nested_select_quiz.sql**: Practice questions on nested `SELECT` queries using the BBC database, focusing on comparing regional data, population statistics, and GDP values using subqueries and the `ALL` operator.

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
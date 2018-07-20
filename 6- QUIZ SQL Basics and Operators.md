QUIZ SCORE: 15/15

1. What SQL command is used to delete a database table?
- DROP TABLE <----correct
- REMOVE TABLE
- DESTROY TABLE
- DEL TABLE

EXPLANATION
To delete a table and all of its data, use the DROP TABLE command. All data from that table is permanently lost.
Covered in: Fundamental SQL Commands

2. What does the UPDATE command do?
- It allows you to update a database’s metadata.
- It’s used to change the name of a table.
- It adds a record to an existing table.
- It allows you to change the values for one or more columns in a table.<----correct

EXPLANATION
The UPDATE command allows you to change the data in a table. When used in conjunction with SET and WHERE you can change one or more columns in one or more rows at a time.
Covered in: Fundamental SQL Commands

3. Which of the following is a valid SQL data type?
- STRING
- LIST
- VARCHAR <----correct
- STACK

EXPLANATION
VARCHAR is a data type that represents a character string of variable length, with maximum length n. You can also declare it as CHARACTER VARYING. CHARACTER is also a valid data type in SQL but represents a character string of fixed length n. Meanwhile, STRING, LIST, and STACK are invalid data types in SQL.
Covered in: Databases: Introduction

4. Which query selects ALL fields from the customers table?
- `SELECT * FROM customers;` <----correct
- `SELECT first_name FROM customers;`
- `SELECT customer_id, first_name FROM customers;`
- `SELECT ALL FROM customers;`

EXPLANATION
The SELECT clause has a special operator, *, that returns ALL of the columns from the table (or set of tables) being queried. If a WHERE clause is included, the resulting set only returns the rows that satisfy the specified conditions.
Covered in: Operators in SELECT Statements

5. Which of the following is true about the = operator?
- It checks the values on either side of it for equality.
- It works on numbers and strings.
- It is case sensitive.
- All of the above. <----correct

EXPLANATION
SQL uses a single = symbol to mean equal to instead of ==. = can be used on both strings and numbers. In the case of strings, both the case and characters need to be the same for two strings to be equal; in other words, "Numero uno" does not equal "NuMerO Uno".
Covered in: Operators in SELECT Statements

6. Which of the following is the correct syntax to query a customers table for customers with the last name “Smith”?

- `SELECT * FROM customers WHERE last_name = 'Smith';` <----correct
- `SELECT * FROM customers WHERE last_name == 'Smith';`
- `SELECT * FROM customers WHERE last_name === 'Smith';`
- `SELECT * FROM customers WHERE last_name LIKE 'Smith';`

EXPLANATION
In contrast to many programming languages, SQL uses a single = symbol to mean equal to instead of ==. In the query above, the = is used to query the Customers table for customers with the last name equivalent to "Smith." The = symbol may also be used to check the equality of other data types, for instance, numbers. Whenever we check for equality between strings, we must use quotes.
Covered in: Operators in SELECT Statements

7. Which of the following are valid comparison operators?
- >
- LIKE
- !=
- All of the above. <-----correct

EXPLANATION
Comparison operators are used to compare values in relation to each other. The > operator checks of the first operand to the left of the ">" is greater than the second operand to the right. The LIKE operator is used with the wildcard * symbol to compare for matching values. The != operator checks if two values are not equal to each other.
Covered in: Operators in SELECT Statements

8. Given the table below, what movies would the following query select?
- `SELECT title
FROM movies
WHERE year > 1970
AND year < 1980`

|id|title|year|
|-----|-----|-----|
|10103|Willy Wonka & the Chocolate Factory | 1971
11049|	The Breakfast Club|	1985
13877|	A New Hope|	1977
14327	|E.T. the Extra-Terrestrial|	1982
15492	|The Empire Strikes Back	|1980

- The Breakfast Club, E.T. the Extra-Terrestrial, The Empire Strikes Back.
- Willy Wonka & the Chocolate Factory, A New Hope. <----correct
- Willy Wonka & the Chocolate Factory, A New Hope, The Empire Strikes Back.
- All of the movies.

EXPLANATION
SQL contains logical operators for combining or negating conditions. We use AND to combine required filters, OR when just of them is required, and NOT to find columns that don’t match the condition. Conditions can be chained together and grouped using parentheses.
Covered in: Fundamental SQL Commands

9. What is the correct syntax for filtering a column that equals the strings A or B?

- WHERE column_name = “A” OR “B”
- WHERE column_name = “A” || column_name = “B”
- WHERE column_name = “A” OR column_name = “B” <----correct
- WHERE column_name = OR(“A”, “B”)

EXPLANATION
In SQL, use the OR operator between two filters to select rows that match any of the given criteria. Contrasting that is the AND operator which dictates that for the row to be matched it must satisfy all of the criteria.
Covered in: Fundamental SQL Commands

10. What is the correct syntax for adding records to a database?

- `CREATE (value_1, value_2) INTO table_name;`
- `ADD INTO table_name VALUES (value_1, value_2);`
- `INSERT VALUES (value_1, value_2) INTO table_name (column_1, column_2);`
- `INSERT INTO table_name (column_1, column_2) VALUES (value_1, value_2);` <----correct

EXPLANATION
Create new records in a table by using the INSERT INTO statement, which requires at least the name of the table and the data you want to add. There is an option to specify column names, and if you don’t Postgres will assume you are inserting data for each column and in the same order that the columns appear in the table.
Covered in: Fundamental SQL Commands

11. Which of the following is a valid example of how to create a database table?
```
create_table albums:
      id integer,
      title text,
      price numeric(5, 2)
```
```
CREATE TABLE albums (
      id,
      title,
      price
);
```
```
CREATE TABLE albums (
      id integer,
      title text,
      price numeric(5, 2)
); <----correct
```
```
```sql CREATE(TABLE, ‘albums) { id integer, title text, price numeric(5, 2) };
```

EXPLANATION
Use the CREATE TABLE statement to add a table to the database. It requires you to specify the name of the table (albums in this example) along with a list of all columns and their data type (integer, text, etc.). This example shows three data types, but there are more data types available.
Covered in: Fundamental SQL Commands

12. Which of the following are valid keywords in a basic select statement?
- SELECT, FROM, and WHERE <----correct
- SELECT, EXTRACT, FROM
- SELECT, GET, FROM, and WHERE
- SELECT, IN

EXPLANATION
In addition to the SELECT keyword, the statement must also contain the FROM keyword to specify the table or set of tables from which to retrieve data. Select statements may also contain optional clauses such as WHERE, GROUP BY, HAVING, etc.
Covered in: Operators in SELECT Statements

13. Referring to the listed tables below, what does the following query return?

SELECT first_name, last_name
FROM   customers, transactions
WHERE  customers.customer_id = transactions.customer_id
AND    transactions.cost > 50;

customers:
customer_id	first_name	last_name
00001	Jane	Smith
00002	Bob	Adams
00003	Mike	Johnson
00004	Jenn	Nelson

transactions:
trans_id	customer_id	cost	date
00122	00001	$100.00	07-10-2017
00092	00001	$24.00	04-19-2015
00103	00003	$25.00	07-10-2017
00004	00002	$75.00	03-18-2017

- The records: “Jane, Smith” and “Jenn, Nelson.”
- The records: “Jane, Smith,” “Jenn, Nelson,” and “Bob Adams.”
- The records: “00001, Jane, Smith” and “00004, Jenn, Nelson.”
- None of the above. <----correct

EXPLANATION
This SQL statement joins the customers and transactions tables together using the customer_id field. For every matching customer_id in the transactions table, the statement returns the first and last names of those customers if they have a transaction with a cost greater than $50.
Covered in: Fundamental SQL Commands

14. Which of the following is not a possible SELECT statement? (This does not refer to a specific table, so assume that the column names and table names exist)
- `SELECT column_name FROM table_name;`
- `SELECT * FROM table_name;`
- `SELECT DISTINCT column_name FROM table_name;`
- `SELECT ONLY column_name FROM table_name;` <----correct

EXPLANATION
SELECT column_name FROM table_name; will select a specific column from a table and is a valid SQL query. SELECT * FROM table_name will select all columns from a table and is a valid SQL query. SELECT DISTINCT column_name FROM table_name will select only distinct columns from a table and is a valid SQL query. This can be helpful when a column has entries that contain identical values. SELECT ONLY column_name FROM table_name is an invalid SQL query and no such query exists.
Covered in: Operators in SELECT Statements

15 Which of the following is not a valid logical operator in SQL?
- OR
- NOT
- LIKE <----correct
- AND

EXPLANATION
The valid logical operators are AND, OR and NOT whereas LIKE is a comparison operator. AND and OR can be conditions chained together, and NOT is for negating them.
Covered in: Fundamental SQL Commands

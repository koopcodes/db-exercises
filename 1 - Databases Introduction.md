###### Bloc WDT Module 3 Computer Science Findamentals
#### Section 4 Databases and SQL
## Checkpoint 1 - Databases: Intro

# Exercises
Create a new repository on GitHub to hold your assignments for the Databases module. Create a new branch for Checkpoint 1. Submit your answers.

1. What data types do each of these values represent?

|Data |	Type |
|-----|-----|
|"A Clockwork Orange"|String|
|42   | Integer |
|9/02/1945 | Integer/Date |
|98.7   | Float |
|$15.99   | Float/Currency |

2. Explain when a database would be used. Explain when a text file would be used.
> A: Use a database when storing lots of data and when there will be fequent adds, deletes, and edits. Use a text file when data needs to be read by humans.

3. Describe one difference between SQL and other programming languages.

> A: Most programming languages are procedural. One must define the procedure or process to be followed to get the result. SQL is not procedural but rather declarative, meaning one declares what you want in your result and SQL takes care of the procedure of "how" under the hood.

4. In your own words, explain how the pieces of a database system fit together at a high level.

> A: Data is contained as values in Cells. Cells are formed by the intersection of horizontal Rows (containing all the different bits a data for an particular record), and vertical Columns that contain the same type of data element defined by the header name for every record stored. The Cell grid formed by Rows of records containing defined Columns of data are called Tables. Rows have a unique key value that allows access to column-stored data in cells on that row.

5. Explain the meaning of table, row, column, and value.

|Term  | Definition |
|-----|-----|
|Table  | A collection of related data held in a structured format|
|Row  | A single, implicitly structured data item in a table |
|Column | A set of data values of a particular simple type, one value for each row |
|Value | A representation of data contained in a Cell|

6. List three data types that can be used in a table.
> A: String, Integer, and Float

7. Given this payments table, provide an English description of the following queries and include their results:
```
SELECT date, amount
FROM payments;

SELECT amount
FROM payments
WHERE amount > 500;

SELECT *
FROM payments
WHERE payee = 'Mega Foods';
```
>The first statements reads: From the payments table give me all dates payments were made and their amounts.

| date | amount |
|-----|-----|
|2016-05-01T00:00:00.000Z | 1500.0000|
|2016-05-10T00:00:00.000Z| 37.0000|
|2016-05-15T00:00:00.000Z | 124.9300|
|2016-05-23T00:00:00.000Z|54.7200|

> The second statement reads: From the payments table show me all payment amounts larger than 500.

| amount |
|-----|
|1500.0000|

> The thrid statements reads: From the payments table show me all columns where the Payee is Mega Foods.

|date| payee | amount | memo |
|-----|-----|-----|-----|
|2016-05-15T00:00:00.000Z | Mega Foods | 124.9300 | Groceries|

8. Given this users table, write SQL queries using the following criteria and include the output:

- The email and sign-up date for the user named DeAndre Data.
```
SELECT email, signup
FROM users
WHERE name = 'DeAndre Data'
```
| email | signup |
|-----|-----|
|datad@comcast.net | 2008-01-20T00:00:00.000Z|

- The user ID for the user with email 'aleesia.algorithm@uw.edu'.
```
SELECT userid
FROM users
WHERE email = 'aleesia.algorithm@uw.edu'
```
|userid|
|-----|
| 1 |

- All the columns for the user ID equal to 4.
```
SELECT *
FROM users
WHERE userid = 4
```
| userid | name | email | signup |
|--------|------|-------|--------|
| 4 | Brandy Boolean | bboolean@nasa.gov | 1999-10-15T00:00:00.000Z|

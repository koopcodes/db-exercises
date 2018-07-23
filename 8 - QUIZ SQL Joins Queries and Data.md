QUIZ SCORE: 11/11

1. Which of the following is not a valid type of join?
- BETWEEN JOIN <----correct
- INNER JOIN
- RIGHT JOIN
- OUTER JOIN

EXPLANATION
Valid types of JOINS include: INNER, RIGHT, LEFT, OUTER, NATURAL, CROSS, and SELF JOINS.
Covered in: Fundamental SQL Commands

2. Which of the following is the correct syntax used to run a SQL query for a column in a table?
- FROM table_name SELECT column_name;
- RETRIEVE column_name FROM table_name;
- IF(column_name = table_name) SELECT column_name;
- SELECT column_name FROM table_name; <----correct

EXPLANATION
To retrieve data from a table, send a query to the table. Use an SQL SELECT statement to do this. The statement consists of a select list, a table list, and optionally, any qualifications to specify restrictions on the data. The select list lists all the columns we want to return, for example, SELECT column_one, column_two. A table list lists the tables from which to retrieve the data, for example, FROM table_one, table_two.
Covered in: Databases: Introduction

3. Which of the following is not a valid SELECT statement?
- `SELECT column_name
FROM table_name;`
- `SELECT * FROM table_name;`
- `SELECT DISTINCT column_name
FROM table_name;`
- `SELECT ONLY column_name
FROM table_name;` <----correct

EXPLANATION
SELECT column_name FROM table_name; will select a specific column from a table and is a valid SQL query. SELECT * FROM table_name will select all the columns from a table and is a valid SQL query. SELECT DISTINCT column_name FROM table_name will select only distinct columns from a table and is a valid SQL query. This type of SELECT statement can be helpful when a column has entries that contain identical values. SELECT ONLY column_name FROM table_name is an invalid SQL query.
Covered in: Databases: Introduction

4. Which of the following selects all records from a table named customers where "last_name" starts with the letter "A", in ascending order?

SELECT * FROM Customers
WHERE last_name = 'A%'
ORDER BY last_name;

SELECT * FROM Customers
WHERE last_name LIKE '%A%'
ORDER BY last_name ASCN;

SELECT * FROM Customers
WHERE last_name LIKE 'A%'
ORDER BY last_name ASC; <----correct

SELECT * FROM Customers
WHERE last_name = 'A%'
SORT BY last_name;
EXPLANATION

Use the LIKE operator to find matching values. WHERE last_name LIKE 'A%' finds all matching records with last_name starting with "A". ORDER BY last_name ASC sorts the result set by the last_name field, alphabetically, in ascending order.
Covered in: Fundamental SQL Commands

5. Suppose we no longer need the customers table below. What is the correct way to delete the entire table?

customer_id	first_name	last_name
00001	Shinichi	Mochizuki
00002	Pierre	Fermat
00003	Vesselin	Dimitrov

- ALTER TABLE customers
DROP COLUMN customer_id;
- TRUNCATE TABLE customers;
- DROP TABLE customers; <----correct
- DELETE ALL;

EXPLANATION
The SQL DROP TABLE statement is used to remove a table definition and all the data for that table. Using this command destroys all the information available in the table forever. We use the TRUNCATE TABLE statement to delete the data inside a table but not the table itself. The ALTER TABLE DROP COLUMN statement deletes only a specific column in a table. DELETE ALL does not exist.
Covered in: Databases: Introduction

6. Which of the following is a difference between a primary key and a foreign key?

- A primary key can be null, while a foreign key cannot.
- A primary key can be a duplicate, while a foreign key must always be unique.
- A primary key must always be unique, while a foreign key can be a duplicate. <----correct
- None of the above.

EXPLANATION
One main difference between a primary key and a foreign key is that a foreign key can be a duplicate, while a primary key must always be unique. We do not have to explicitly define a primary key as UNIQUE.
Covered in: Databases: Introduction

7. What will the following query select?

SELECT *
    FROM shipping_address
    NATURAL JOIN user;

- All rows and the columns that appear in both tables. <----correct
- All rows and the columns that do not appear in both tables.
- One row with a list of the columns that appear in both tables.
- Nothing, it’s invalid syntax.

EXPLANATION
NATURAL is a shorthand form of USING. It forms a USING list consisting of only the column names that appear in both input tables. These columns appear only once in the output table.
Covered in: JOIN Statements

8. Referring to the listed tables, what does the following query return?

 SELECT first_name, last_name
FROM   customers, transactions
WHERE  customers.customer_id = transactions.customer_id
AND    transactions.cost > 50;
customers:

id	first_name	last_name
00001	Jane	Smith
00002	Bob	Adams
00003	Mike	Johnson
00004	Jenn	Nelson
transactions:

id	customer_id	cost	date
00122	00001	$100.00	07-10-2017
00092	00001	$24.00	04-19-2015
00103	00003	$25.00	07-10-2017
00004	00002	$75.00	03-18-2017

- The records: “Jane, Smith” and “Jenn, Nelson.”
- The records: “Jane, Smith,” “Jenn, Nelson,” and “Bob Adams.”
- The records: “00001, Jane, Smith” and “00004, Jenn, Nelson.”
- None of the above. <----correct

EXPLANATION
This SQL statement joins the customers and transactions tables together by the customer_id field. For every matching customer_id in the transactions table, the first and last names of those customers return if they have a transaction with a cost greater than $50.
Covered in: Databases: Introduction

9. Referring to the transactions table below, what will the following query return?

SELECT   SUM(cost), customer_id
FROM     transactions
GROUP BY customer_id
HAVING   SUM(cost) > 50;
trans_id	customer_id	cost	date
00122	00001	$100.00	07-10-2017
00092	00001	$24.00	04-19-2015
00103	00003	$25.00	07-10-2017
00004	00002	$75.00	03-18-2017

- The records: “124, 00001”, “75, 00002.” <----correct
- The record: “200.”
- The records: “100, 00001”, “75, 00002.”
- None of the above.

EXPLANATION
The above SQL statement retrieves the sum of costs grouped by customer_id from the transactions table. Since there are two transactions with customer_id of “00001”, the costs from those two transactions are summed together. Lastly, the HAVING clause specifies that query only returns records with a total cost of transactions greater than $50.
Covered in: Databases: Introduction

10. Which SQL statement would result in the following data set from the customers and transactions tables?

Result:

first_name	last_name	trans_id
Bob	Adams	00004
Jane	Smith	00092
Jane	Smith	00122
Jenn	Nelsons	(null)
Mike	Johnson	00103
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

`SELECT     c.first_name, c.last_name, t.trans_id
FROM       customers c
INNER JOIN transactions t ON c.customer_id = t.customer_id;`

`SELECT     c.first_name, c.last_name, t.trans_id
FROM       customers c
OUTER JOIN transactions t ON c.customer_id = t.customer_id;`

`SELECT     c.first_name, c.last_name, t.trans_id
FROM       customers c
RIGHT JOIN transactions t ON c.customer_id = t.customer_id;`

`SELECT    c.first_name, c.last_name, t.trans_id
FROM      customers c
LEFT JOIN transactions t ON c.customer_id = t.customer_id;` <----correct

EXPLANATION
In the result set, we see that there is data from both the customers table and the transactions table. The queries are using aliases (c represents the customers table and t represents for the transactions table). Specifically, the first_name and last_name fields are from the customers table, while the trans_idfield is from the transactions table. The most significant clue that the SQL statement used a LEFT JOIN is that we see a record with aNULL trans_id. The LEFT JOIN in our query means that we return all records from the left table (customers), whether or not there is a match with that customer_id in the right table (transactions). Since there is no record in the transactions table for Jenn Nelson, the result will have a NULL for the corresponding trans_id.
Covered in: JOIN Statements

11. Referring to the relational schema below, which query will return the serial_number and model of any computer that has not been purchased?

computer(serial_number, manufacturer, model, color)
purchase(serial_number, ssn)
person(ssn, first_name, last_name, address)

`SELECT * FROM computer;`

`SELECT c.serial_number, c.model FROM computer c;`

`SELECT    c.serial_number, c.model
FROM      computer c
LEFT JOIN purchase p ON p.serial_number = c.serial_number
WHERE     p.ssn IS NULL;` <----correct

`SELECT c.serial_number, c.manufacturer FROM computer c, purchase p
WHERE c.serial_number = p.serial_number;`

EXPLANATION
The first step is to select serial_number and model from the computer table. Start with SELECT c.serial_number, c.model FROM computer c. Next, we need a JOIN to see if the computer has been purchased. LEFT JOIN purchase p ON p.serial_number = c.serial_number will match computers with their purchases if they have been purchased. If they have not been purchased, the columns from purchase will be NULL, which is where the WHERE p.ssn IS NULL comes in. If the ssn from purchase is NULL, no one has purchased the computer.

Covered in: Databases: Introduction

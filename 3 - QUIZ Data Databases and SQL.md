QUIZ SCORE: 9/9

1. Referring to the customers table below, which of the following statements is true?
```
customer_id	first_name	last_name
00001	Jane	Smith
00002	Bob	Adams
00003	Mike	Johnson
```
- 00003 is a row and Mike and Johnson are columns.
- first_name is a value and Jane and Bob are rows.
- first_name is a column and Jane and Bob are values.<---correct
- 00001, Jane and Smith are a row and customer_id, first_name, and last_name are values.

EXPLANATION
The entire table is laid out with columns labeled according to what is stored there, and rows that represent individual customers. Each cell in the table contains a particular value - some piece of information that the column name describes.
Covered in: Databases: Introduction

2. Why are data types required?
- They optimize performance.
- They optimize storage.
- They provide consistent formatting within columns of a database.
- All of the above.<---correct

EXPLANATION
Data types are important because they store data in the database in a consistent format. Knowing the data type that is used in a particular column allows for the optimization of calculations and operations done on that column. Data types also affect storage and performance of the database so it is important to consider which data types are best for a given situation. Some commonly used data types are: INT, VARCHAR, DATETIME, DECIMAL, FLOAT, and BIT.
Covered in: Databases: Introduction

3. What does RDBMS stand for?
- Relational Database Monitoring System
- Relational Database Management System<----correct
- Realtime Data Marketing System
- Realtime Dynamic Backend Management System

EXPLANATION
RDBMS stands for Relational Database Management System. It is the basis for SQL and many modern database systems such as Microsoft SQL Server and MySQL. The data in an RDBMS is stored in tables, which are a collection of related data entries consisting of columns and rows.
Covered in: Installing and Using Relational Databases

4. Which of the following is not an element of relational database tables?
- table
- row
- column
- loop <---- correct

EXPLANATION
In the context of a database table, a column is a set of data values of a particular type, one for each row of the table. Meanwhile, loops are not an element of relational database tables.
Covered in: Installing and Using Relational Databases

5. What is the purpose of the psql command?
- To start and stop the Postgres database.
- To check a SQL file for errors.
- To open an interactive interface for executing SQL commands.<----correct
- It is an alias for the postgres command.

EXPLANATION
Postgres provides an interactive command line interface for executing SQL code called psql. You can use psql to execute SQL files and enter SQL commands directly. psql is launched by typing psql from the command line and hitting enter.
Covered in: Installing and Using Relational Databases

6. What is the relationship between a database and a schema?
- There is no relationship.
- A database uses SQL that the schema provides.
- If a schema is deleted the database is deleted as well.
- Schemas categorize the objects in a database.<----correct

EXPLANATION
A database acts as a container and contains data, log files, and schemas within it. Schemas are used to group logical objects together. A schema is a way of categorizing the objects in a database.
Covered in: Databases: Introduction

7. Given a table named users with the columns id, name, and email, how would you query the database to get the information for the user with an ID of 3?
```
FETCH id, name, email
FROM users
WHERE id = 3

SELECT id, name, email
FROM users
WHERE id = 3 <-------correct

SELECT users.*
WHERE id = 3

SEL *
WHERE users.id = 3
```
EXPLANATION
To retrieve data from a table, a query is made using an SQL SELECT statement. The statement consists of a select list, a table list, and optionally, any qualifications to specify restrictions on the data. A select list lists all the columns to be returned, for example, SELECT column_one, column_two. A table list lists the tables from which to retrieve the data, for example, FROM table_one, table_two.
Covered in: Databases: Introduction

8. Which of the following is NOT a valid PostgreSQL command?
- generate <----correct
- createdb
- dropdb
- psql

EXPLANATION
To create a new database, use the command createdb database_name where database_name is the name chosen for the specific database being built. Database names must have an alphabetic first character. If the database is no longer needed, it can be removed with the command dropdb database_name. This will physically remove all the files associated with the database and cannot be reversed. psql database_name will run the PostgreSQL interactive terminal program, which allows users to edit, enter, and execute SQL commands. generate is not a valid command and will throw an error.
Covered in: Installing and Using Relational Databases

9. What is the correct way to run a SQL command from a file?
- postgres -f=FILENAME
- pg --file=FILENAME
- postgres --file=FILENAME <----correct
- postgres_exec FILENAME

EXPLANATION
The postgres command can execute a file as if you had typed the SQL into its console directly. You can specify the file to execute using postgres --file=FILENAME. If you want to use the shorthand flag, type postgres -f FILENAME. Notice the single dash - before the flag and a space instead of an equals sign between it and the filename.
Covered in: Installing and Using Relational Databases

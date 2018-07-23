###### Bloc Web Dev Track
#### Module 3 - Computer Science Fundamentals
### Section 4 - Databases and SQL
## Checkpoint 7 - JOIN Statements

#Exercises
Submit your answers to the following questions.
NOTE: Real-world examples must be your own and not based on the text or previous assignments.

1. How do you find related data held in two separate data tables?
> Use a `JOIN` clause, combining two tables into one
2. Explain, in your own words, the difference between an INNER JOIN, LEFT OUTER JOIN, and RIGHT OUTER JOIN. Give a real-world example for each.
> `INNER JOIN` is the most common type. An output row is produced for every pair of input rows that match on the join conditions.
```
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
//All rows where customerID in Orders and Cusomers tables match
```

` LEFT OUTER JOIN` The same as an inner join, except that if there is any row for which no matching row in the table on the right can be found a row is output containing the values from the table on the left with NULL for each value in the table on the right if no match. This means that every row from the table on the left will appear at least once in the output
```
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
LEFT OUTER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
//All rows in Orders table whether they have an entry in Customers table or not
```
`RIGHT OUTER JOIN` The same as a left outer join, except with the roles of the tables reversed. Every row from the table on the right will appear at least once in the output, with NULL for each missing elements in the left table.
```
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
RIGHT OUTER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
//All rows in Customers table whether they have an entry in Orders table or not
```
3. Define primary key and foreign key. Give a real-world example for each.
> A primary key is a column or group of columns that uniquely identify a row. Every table should have a primary key. A foreign key is a column or set of columns in one table whose values must have matching values in the primary key of another (or the same) table

4. Define aliasing.
The technique of creating short variable names, usually a single letter, to replace the table name in a query using `AS`, e.g. `FROM tableName AS anyVariable` or `JOIN tableName AS anyVariable`

5. Change this query so that you are using aliasing:
```
SELECT professor.name, compensation.salary,
compensation.vacation_days
FROM professor AS p
JOIN compensation AS c
ON professor.id = compensation.professor_id;
```

6. Why would you use a NATURAL JOIN? Give a real-world example
> As a shortcut to using `USING` and having to list out columns shared by both tables. The columns in common appear only once in the output table without the need to create a list of shared columns as with `USING`

7. Using [this Employee schema and data](https://www.db-fiddle.com/f/sG1TKgR15GhH8cjbAwzjAm/0), write queries to find the following information:
 - List all employees and all shifts.
```
SELECT employees.name, shifts.date, shifts.start_time, shifts.end_time
FROM scheduled_shifts
INNER JOIN employees
ON employees.id = scheduled_shifts.employee_id
INNER JOIN shifts
ON shifts.id = scheduled_shifts.shift_id
ORDER BY shifts.date ASC,
         shifts.start_time ASC;
```

8. Using [this Adoption schema and data](https://www.db-fiddle.com/f/tpodLv3A43VL4gHqohqx2o/0), please write queries to retrieve the following information and include the results:
- Create a list of all volunteers. If the volunteer is fostering a dog, include each dog as well.
```
SELECT first_name, last_name, dogs.name
FROM volunteers
LEFT OUTER JOIN dogs
ON dogs.id = volunteers.foster_dog_id;
```

- The cat's name, adopter's name, and adopted date for each cat adopted within the past month to be displayed as part of the "Happy Tail" social media promotion which posts recent successful adoptions.
```
SELECT cats.name, adopters.first_name, adopters.last_name, cat_adoptions.date
FROM cat_adoptions
INNER JOIN cats
ON cats.id = cat_adoptions.cat_id
INNER JOIN adopters
ON adopters.id = cat_adoptions.adopter_id
GROUP BY cats.name, adopters.first_name, adopters.last_name, cat_adoptions.date
HAVING cat_adoptions.date >= current_date - 30;
```

- Create a list of adopters who have not yet chosen a dog to adopt.
```
SELECT first_name, last_name, dogs.name
FROM volunteers
LEFT JOIN dogs
ON dogs.id = volunteers.foster_dog_id
WHERE volunteers.foster_dog_id IS NULL;
```
- Lists of all cats and all dogs who have not been adopted.
```
SELECT name
FROM dogs
LEFT JOIN dog_adoptions
ON dogs.id = dog_adoptions.dog_id
WHERE dog_adoptions.dog_id IS NULL;

SELECT name
FROM cats
LEFT JOIN cat_adoptions
ON cats.id = cat_adoptions.cat_id
WHERE cat_adoptions.cat_id IS NULL;
```

- The name of the person who adopted Rosco.
```
SELECT first_name, last_name
FROM adopters
INNER JOIN dog_adoptions
ON adopters.id = dog_adoptions.adopter_id
WHERE dog_adoptions.dog_id = 10007;
```
9. Using [this Library schema and data](https://www.db-fiddle.com/f/j4EGoWzHWDBVtiYzB9ygC4/0), write queries applying the following scenarios and include the results:

- To determine if the library should buy more copies of a given book, please provide the names and position, in order, of all of the patrons with a hold (request for a book with all copies checked out) on "Advanced Potion-Making"
```
SELECT patrons.name, holds.rank
FROM holds
INNER JOIN patrons
ON holds.patron_id = patrons.id
WHERE holds.isbn = '9136884926'
ORDER BY holds.rank ASC;
```
- List all of the library patrons. If they have one or more books checked out, list the books with the patrons
```
SELECT patrons.name,
MAX((CASE WHEN books.title IN (SELECT title FROM books WHERE transactions.checked_in_date IS NULL) THEN books.title ELSE NULL END))
FROM patrons
INNER JOIN transactions ON transactions.patron_id = patrons.id
INNER JOIN books ON books.isbn = transactions.isbn
GROUP BY patrons.name;
```

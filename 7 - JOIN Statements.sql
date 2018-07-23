SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
//All rows where customerID in Orders and Cusomers tables match

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
LEFT OUTER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
//All rows in Orders table whether they have an entry in Customers table or not

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
RIGHT OUTER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
//All rows in Customers table whether they have an entry in Orders table or not

SELECT professor.name, compensation.salary,
compensation.vacation_days
FROM professor AS p
JOIN compensation AS c
ON professor.id = compensation.professor_id;

SELECT employees.name, shifts.date, shifts.start_time, shifts.end_time
FROM scheduled_shifts
INNER JOIN employees
ON employees.id = scheduled_shifts.employee_id
INNER JOIN shifts
ON shifts.id = scheduled_shifts.shift_id
ORDER BY shifts.date ASC,
         shifts.start_time ASC;

SELECT first_name, last_name, dogs.name
FROM volunteers
LEFT OUTER JOIN dogs
ON dogs.id = volunteers.foster_dog_id;

SELECT cats.name, adopters.first_name, adopters.last_name, cat_adoptions.date
FROM cat_adoptions
INNER JOIN cats
ON cats.id = cat_adoptions.cat_id
INNER JOIN adopters
ON adopters.id = cat_adoptions.adopter_id
GROUP BY cats.name, adopters.first_name, adopters.last_name, cat_adoptions.date
HAVING cat_adoptions.date >= current_date - 30;

SELECT first_name, last_name, dogs.name
FROM volunteers
LEFT JOIN dogs
ON dogs.id = volunteers.foster_dog_id
WHERE volunteers.foster_dog_id IS NULL;

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

SELECT first_name, last_name
FROM adopters
INNER JOIN dog_adoptions
ON adopters.id = dog_adoptions.adopter_id
WHERE dog_adoptions.dog_id = 10007;

SELECT patrons.name, holds.rank
FROM holds
INNER JOIN patrons
ON holds.patron_id = patrons.id
WHERE holds.isbn = '9136884926'
ORDER BY holds.rank ASC;

SELECT patrons.name, books.title
FROM patrons
LEFT JOIN transactions
ON patrons.id = transactions.patron_id
INNER JOIN books
ON books.isbn = transactions.isbn
WHERE transactions.checked_in_date IS NULL

SELECT patrons.name, books.title
FROM transactions
JOIN patrons ON patrons.id = transactions.patron_id
JOIN books ON books.isbn = transactions.isbn
ORDER BY patrons.name ASC;

SELECT patrons.name, books.title
FROM transactions
JOIN patrons ON patrons.id = transactions.patron_id
JOIN books ON books.isbn = transactions.isbn
WHERE  = ANY (SELECT transactions.id
                  FROM transactions
                  WHERE transactions.checked_in_date IS NULL)
ORDER BY patrons.name ASC;

SELECT patrons.name, books.title
FROM patrons
JOIN transactions ON transactions.patron_id = patrons.id
JOIN books ON books.isbn = transactions.isbn
ORDER BY patrons.name ASC;

SELECT patrons.name,
(CASE WHEN books.title IN (SELECT title FROM books WHERE transactions.checked_in_date IS NULL) THEN books.title ELSE NULL END)
FROM patrons
JOIN transactions ON transactions.patron_id = patrons.id
JOIN books ON books.isbn = transactions.isbn

SELECT patrons.name,
MAX((CASE WHEN books.title IN (SELECT title FROM books WHERE transactions.checked_in_date IS NULL) THEN books.title ELSE NULL END))
FROM patrons
INNER JOIN transactions ON transactions.patron_id = patrons.id
INNER JOIN books ON books.isbn = transactions.isbn
GROUP BY patrons.name;

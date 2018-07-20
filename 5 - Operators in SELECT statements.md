###### Bloc Web Dev Track
#### Module 3 - Cmputer Science Fundamentals
### Section 4 - Databases and SQL
## Checkpoint 5 - Operators in SELECT statements

# Exercises
Answer the following questions and submit the responses.

1. Write out a generic SELECT statement
```
SELECT `column1`, `column2`, ... *
FROM `table1`, `table2` ...
WHERE `condition`
```

2. Create a fun way to remember the order of operations in a SELECT statement, such as a mnemonic.
> Select Column From Table Where Condition = Sun Can Find The World Cold

3. Given [this dogs table](https://www.db-fiddle.com/f/kvD6xZQ14vRbpPe5muA92L/0), write queries to select the following pieces of data:

- Intake teams typically guess the breed of shelter dogs, so the breed column may have multiple words (for example, "Labrador Collie mix").
> `WHERE columnName LIKE '%string%';`

- Display the name, gender, and age of all dogs that are part Labrador.
```
SELECT name, gender, age
FROM dogs
WHERE breed LIKE '%labrador%';
```
- Display the ids of all dogs that are under 1 year old.
```
SELECT id
FROM dogs
WHERE age <1;
```
- Display the name and age of all dogs that are female and over 35lbs.
```
SELECT name, age
FROM dogs
WHERE gender = 'F' AND weight > 35;
```
- Display all of the information about all dogs that are not Shepherd mixes.
```
SELECT *
FROM dogs
WHERE breed NOT LIKE '%shepherd%';
```
- Display the id, age, weight, and breed of all dogs that are either over 60lbs or Great Danes.
```
SELECT id, age, weight, breed
FROM dogs
WHERE breed LIKE '%dane%' OR weight > 60;
```

4. Given [this cats table](https://www.db-fiddle.com/f/55ePhx9NLn7PzdGnebFaG7/0), what records are returned from these queries?

- `SELECT name, adoption_date FROM cats;`

|name | adoption_date |
|-----|-----|
|Mushi | 2016-03-22T00:00:00.000Z |
|Seashell|null|
|Azul|2016-04-17T00:00:00.000Z|
|Victoire|2016-09-01T00:00:00.000Z|
|Nala|null|

- `SELECT name, age FROM cats;`

|name|age|
|----|----|
|Mushi|1|
|Seashell|7|
|Azul|3|
|Victoire|7|
|Nala|1|

From the cats table, write queries to select the following pieces of data.

- Display all the information about all of the available cats.
```
SELECT *
FROM cats;
```
- Choose one cat of each age to show to potential adopters.
```
SELECT max(name), age
FROM cats
GROUP BY age;
```
- Find all of the names of the cats, so you don’t choose duplicate names for new cats.
```
SELECT name
FROM cats
GROUP BY name;
```
- List each comparison operator and explain when you would use it. Include a real world example for each.

|Operator | Description | Use | Example |
|-----|-----|-----|-----|
|=|Equal| test for equality | WHERE supplier_name = 'Microsoft' |
|<>|Not Equal| test for inequality  | WHERE supplier_name <> 'Microsoft' |
|!=|Not Equal| test for inequality  | WHERE supplier_name != 'Microsoft' |
|>|Greater Than| test for an expression greater than  | WHERE customer_id > 6000  |
|>=|Greater Than or Equal| test for greater than or equal  | WHERE customer_id >= 6000 |
|<|Less Than| test for an expression less than | WHERE product_id < 5  |
|<=|Less Than or Equal| test for less than or equal  | WHERE product_id <= 5|
|IN ( )|Match values in list| test expression for matched value in a list of values | WHERE supplier_name IN ('Microsoft', 'Oracle')  |
|NOT|Negates a condition| negate a condition | WHERE product_name NOT IN ('Pear', 'Banana', 'Bread') |
|BETWEEN|Within a range (inclusive)| test if an expression is within a range of values (inclusive)  | WHERE supplier_id BETWEEN 300 AND 600 |
|IS NULL| NULL value| returns TRUE if a NULL value, otherwise returns FALSE | WHERE favorite_website IS NULL|
|IS NOT NULL|Non-NULL value| returns TRUE if a non-NULL value, otherwise it returns FALSE | WHERE category_id IS NOT NULL  |
|LIKE|Pattern matching with % and _|  use wildcards to perform pattern matching  | WHERE last_name LIKE 'J%'  |
|EXISTS|Condition met if at least one row| subquery returns at least one row  | WHERE EXISTS (SELECT *, FROM orders, WHERE cust_id = ord_id) |

- If you can’t list these from memory, do these flashcards until you can!

7. From the cats table, what data is returned from these queries?
- `SELECT name FROM cats WHERE gender = ‘F’;`
> Got Query Error: error: column "‘f’" does not exist because of the type of single quotation marks used in the example.  Had to change ‘’ to ''

**name**
Seashell
Nala
- `SELECT name FROM cats WHERE age <> 3;`
> **name**
Mushi
Seashell
Victoire
Nala
- `SELECT ID FROM cats WHERE name != ‘Mushi’ AND gender = ‘M’;`
> Got Query Error: error: column "‘mushi’" does not exist because of the type of single quotation marks used in the example.  Had to change ‘’ to ''

**id**
3
4

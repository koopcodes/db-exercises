SELECT `column1`, `column2`, ... *
FROM `table1`, `table2` ...
WHERE `condition`
WHERE columnName LIKE '%string%';

SELECT name, gender, age
FROM dogs
WHERE breed LIKE '%labrador%';

SELECT id
FROM dogs
WHERE age <1;

SELECT name, age
FROM dogs
WHERE gender = 'F' AND weight > 35;

SELECT *
FROM dogs
WHERE breed NOT LIKE '%shepherd%';

SELECT id, age, weight, breed
FROM dogs
WHERE breed LIKE '%dane%' OR weight > 60;

SELECT name, adoption_date FROM cats;

/*
|name | adoption_date |
|-----|-----|
|Mushi | 2016-03-22T00:00:00.000Z |
|Seashell|null|
|Azul|2016-04-17T00:00:00.000Z|
|Victoire|2016-09-01T00:00:00.000Z|
|Nala|null|
*/

SELECT name, age FROM cats;

/*
|name|age|
|----|----|
|Mushi|1|
|Seashell|7|
|Azul|3|
|Victoire|7|
|Nala|1|
*/

SELECT *
FROM cats;

SELECT max(name), age
FROM cats
GROUP BY age;

SELECT name
FROM cats
GROUP BY name;

SELECT name FROM cats WHERE gender = ‘F’;

SELECT name FROM cats WHERE age <> 3;
SELECT ID FROM cats WHERE name != ‘Mushi’ AND gender = ‘M’;

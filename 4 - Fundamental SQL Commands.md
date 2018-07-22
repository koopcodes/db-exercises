###### Bloc Web Dev Track
#### Module 3 - Cmputer Science Fundamentals
### Section 4 - Databases and SQL
## Checkpoint 4 - Fundamental SQL Commands

# Exercises
Use the commands above to complete the following tasks, and submit the SQL statements. Real-world examples must be distinct from those used in the text.

1. List the commands for adding, updating, and deleting data.

A: For adding data `INSERT INTO` command. For updating data `UPDATE`, or `ALTER` command, depending on if we just want to change data or actually change a table. For deleting data, `DELETE` command, or to delete an entire column `DROP COLUMN` and delete the entire table, `DROP TABLE`

2. Explain the structure for each type of command.

`CREATE TABLE` For each column, the statement provides a name and data type
```
CREATE TABLE name (
    column-name data-type,
    column-name data-type,
    column-name data-type,
)
```
`INSERT INTO` Populates the table with values. Multiple entries requires column names, single entries do not in which case be sure to have the values laid out correctly in the columns as they appear in the table
```
INSERT INTO `table-name` (`column-name1`, `column-name2`, `column-name3`, `column-name4`)
VALUES
(`column1-value`, `column2-value`, `column3-value`, `column4-value`),
(`column1-value`, `column2-value`, `column3-value`, `column4-value`),
(`column1-value`, `column2-value`, `column3-value`, `column4-value`),
(`column1-value`, `column2-value`, `column3-value`, `column4-value`);
```

`UPDATE` Changes already entered values. SET and WHERE keywords can take multiple clauses
```
UPDATE `table-name` SET `column-name1` = `new-value1` AND `column-name2` = `new-value2` WHERE `column-name3` = `column3-value` AND `column-name4` = `column4-value`;
```

`DELETE` Deletes Rows. Changes are permanent.
```
DELETE FROM `table-name` WHERE `column-name1` >/=/< `column1-value` AND `column-name2` >/=/< `column2-value`;
```

`ALTER TABLE` Allows changing the table schema by adding columns with `ADD COLUMN` or deleting columns using `DROP COLUMN`. `DROP TABLE` deletes the entire table and does not require the `ALTER TABLE` command
```
ALTER TABLE `table-name` ADD COLUMN `new-column-name` `new-column-data-type` SET DEFAULT `default-data-value`;
```
```
ALTER TABLE `table-name` DROP COLUMN column-name;
```
```
DROP TABLE `table-name`;
```
3. What are some of the data types that can be used in tables? Give a real-world example of each type.

> A: Strings of alphanumeric characters can used as addresses, names, labels, goals, subjects, almost anything. Integers are whole numbers often used as tuple keys, user ids, whole numbers, quantities. Floats are numbers like Integers but are not whole numbers, rather numbers with a decial point and digits in a certain number of places to the right of the decimal point.

4. Decide how to create a new table to hold a list of people invited to a wedding dinner. The table needs to have first and last names, whether they sent in their RSVP, the number of guests they are bringing, and the number of meals (1 for adults and 1/2 for children). Which data type would you use to store each of the following pieces of information?

- First and last name.
> String

- Whether they sent in their RSVP.
> Boolean

- Number of guests.
> Integer

- Number of meals.
> Float

 Write a command that creates the table to track the wedding dinner.
```
CREATE TABLE guestList (
guestID       integer,
firstName     text,
lastName      text,
RSVP          boolean,
adultGuests   integer,
childGuests   integer,
mealsNeeded   numeric(2, 1)
);
```

Write a command that adds a column to track whether the guest sent a thank you card.
```
ALTER TABLE guestList ADD COLUMN sentThankYou boolean SET DEFAULT 'n';
'n' is a valid false state per PostgreSQL documentation
```

You have decided to move the data about the meals to another table, so write a command to remove the column storing the number meals from the wedding table.
```
ALTER TABLE guestList DROP COLUMN mealsNeeded;
```

The guests will need a place to sit at the reception, so write a command that adds a column for table number.
```
ALTER TABLE guestList ADD COLUMN tableNumber integer;
```

The wedding is over and we do not need to keep this information, so write a command that deletes the table numbers from the database.
```
ALTER TABLE guestList DROP COLUMN tableNumber;
```

5. Write a command to create a new table to hold the books in a library with the columns ISBN, title, author, genre, publishing date, number of copies, and available copies.
```
CREATE TABLE books (
ISBN            integer,
title           text,
author          text,
genre           text,
publishingDate  date,
numberOfCopies  integer,
availableCopies integer
);
```
- Find three books and add their information to the table.
```
INSERT INTO books (ISBN, title, author, genre, publishingDate, numberOfCopies,availableCopies)
VALUES
(9780078821738, 'UNIX Made Easy', 'John Muster', 'Operating Systems', 20 August 1996, 1, 1),
(9781577315933, 'The Hero with a Thousand Faces', 'Joseph Campbell', 'Comparitive Mythology', 28 July 2008, 1, 1),
(9781405125246, 'Like a Splinter in Your Mind: The Philosophy Behind the Matrix Trilogy', 'Matt Lawrence', 'Pop Philosophy', 16 July 2004, 1, 1),
(9780618517657, 'The Lord of the Rings: 50th Anniversary Edition', 'J.R.R. Tolkien', 'Fantasy', 21 October 2004, 1, 1);
```
- Someone has just checked out one of the books. Change the number of available copies to 1 fewer.
```
UPDATE books SET availableCopies = availableCopies - 1 WHERE ISBN=9780618517657
```

- Now one of the books has been added to the banned books list. Remove it from the table.
```
DELETE FROM books WHERE ISBN=9780618517657;
```

6. Write a command to make a new table to hold spacecrafts. Information should include id, name, year launched, country of origin, a brief description of the mission, orbiting body, if it is currently operating, and its approximate miles from Earth. In addition to the table creation, provide commands that perform the following operations:
```
CREATE TABLE spacecraft (
  id                    integer,
  name                  text,
  yearLaunched          integer,
  originCountry         text,
  missionDescription    text,
  orbitingBody          text,
  currentlyOperating    boolean,
  milesFromEarth        integer
);
```

- Add three non-Earth-orbiting satellites to the table.
```
INSERT INTO spacecraft (id, name, yearLaunched, originCountry, missionDescription, orbitingBody, currentlyOperating, milesFromEarth)
VALUES
(1, 'Helios 2', 1976, West Germany/USA, 'Solar Observation', 'Sol', FALSE, 114000000)
(2, 'Voyager 2', 1977, USA, 'Study outer planets, leave solar system', none, TRUE, 1.097e+10)
(3, 'Cluster II', 2000, EU/USA, 'Study magnetosphere', 'Venus', TRUE, 35000000)
```

- Remove one of the satellites from the table since it has just crashed into the planet.
```
DELETE FROM spacecraft WHERE id=1;
```

- Edit another satellite because it is no longer operating and change the value to reflect that.
```
UPDATE spacecraft SET currentlyOperating = FALSE WHERE id=2;
```

7. Write a command to create a new table to hold the emails in your inbox. This table should include an id, the subject line, the sender, any additional recipients, the body of the email, the timestamp, whether or not you have read the email, and the id of the email chain it's in. Also provide commands that perform the following operations:
```
CREATE TABLE emails (
id         integer
subject    text
sender     text
recipients text
body       text
timestamp  timestamp
read       boolean
idOfChain  integer
);
```
- Add three new emails to the inbox.
```
INSERT INTO emails (id, subject, sender, recipients, body, timestamp, read, idOfChain) VALUES
(001, 'Hello world', 'Mrs. Koop', 'Koop', 'Hey, how’s it going?', TIMESTAMP '2018-04-13 14:36:00', TRUE, 1001),
(002, 'Hello world', 'Koop', 'Mrs. Koop', 'Fine.', TIMESTAMP '2018-04-13 14:40:00', TRUE, 1001)
(003, 'I’m hungry', 'Koop', 'Mama Koop', 'What are we doing for lunch?', TIMESTAMP '2018-04-13 19:45:00', TRUE, 2001);
```

- You deleted one of the emails, so write a command to remove the row from the inbox table.
```
DELETE FROM emails WHERE id=002;
```

- You started reading an email but just heard a crash in another room. Mark the email as unread before investigating the crash, so you can come back and read it later.
```
UPDATE emails SET read=FALSE WHERE id=003;
```

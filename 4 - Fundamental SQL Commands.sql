CREATE TABLE name (
    column-name data-type,
    column-name data-type,
    column-name data-type,
)

INSERT INTO `table-name` (`column-name1`, `column-name2`, `column-name3`, `column-name4`)
VALUES
(`column1-value`, `column2-value`, `column3-value`, `column4-value`),
(`column1-value`, `column2-value`, `column3-value`, `column4-value`),
(`column1-value`, `column2-value`, `column3-value`, `column4-value`),
(`column1-value`, `column2-value`, `column3-value`, `column4-value`);

UPDATE `table-name` SET `column-name1` = `new-value1` AND `column-name2` = `new-value2` WHERE `column-name3` = `column3-value` AND `column-name4` = `column4-value`;

DELETE FROM `table-name` WHERE `column-name1` >/=/< `column1-value` AND `column-name2` >/=/< `column2-value`;

ALTER TABLE `table-name` ADD COLUMN `new-column-name` `new-column-data-type` SET DEFAULT `default-data-value`;

ALTER TABLE `table-name` DROP COLUMN column-name;

DROP TABLE `table-name`;

CREATE TABLE guestList (
guestID       integer,
firstName     text,
lastName      text,
RSVP          boolean,
adultGuests   integer,
childGuests   integer,
mealsNeeded   numeric(2, 1)
);

ALTER TABLE guestList ADD COLUMN sentThankYou boolean SET DEFAULT 'n';

ALTER TABLE guestList DROP COLUMN mealsNeeded;

ALTER TABLE guestList ADD COLUMN tableNumber integer;

ALTER TABLE guestList DROP COLUMN tableNumber;

CREATE TABLE books (
ISBN            integer,
title           text,
author          text,
genre           text,
publishingDate  date,
numberOfCopies  integer,
availableCopies integer
);

INSERT INTO books (ISBN, title, author, genre, publishingDate, numberOfCopies,availableCopies)
VALUES
(9780078821738, 'UNIX Made Easy', 'John Muster', 'Operating Systems', 20 August 1996, 1, 1),
(9781577315933, 'The Hero with a Thousand Faces', 'Joseph Campbell', 'Comparitive Mythology', 28 July 2008, 1, 1),
(9781405125246, 'Like a Splinter in Your Mind: The Philosophy Behind the Matrix Trilogy', 'Matt Lawrence', 'Pop Philosophy', 16 July 2004, 1, 1),
(9780618517657, 'The Lord of the Rings: 50th Anniversary Edition', 'J.R.R. Tolkien', 'Fantasy', 21 October 2004, 1, 1);

UPDATE books SET availableCopies = availableCopies - 1 WHERE ISBN=9780618517657

DELETE FROM books WHERE ISBN=9780618517657;

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

INSERT INTO spacecraft (id, name, yearLaunched, originCountry, missionDescription, orbitingBody, currentlyOperating, milesFromEarth)
VALUES
(1, 'Helios 2', 1976, West Germany/USA, 'Solar Observation', 'Sol', FALSE, 114000000)
(2, 'Voyager 2', 1977, USA, 'Study outer planets, leave solar system', none, TRUE, 1.097e+10)
(3, 'Cluster II', 2000, EU/USA, 'Study magnetosphere', 'Venus', TRUE, 35000000)

DELETE FROM spacecraft WHERE id=1;

UPDATE spacecraft SET currentlyOperating = FALSE WHERE id=2;

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

INSERT INTO emails (id, subject, sender, recipients, body, timestamp, read, idOfChain) VALUES
(001, 'Hello world', 'Mrs. Koop', 'Koop', 'Hey, how’s it going?', TIMESTAMP '2018-04-13 14:36:00', TRUE, 1001),
(002, 'Hello world', 'Koop', 'Mrs. Koop', 'Fine.', TIMESTAMP '2018-04-13 14:40:00', TRUE, 1001)
(003, 'I’m hungry', 'Koop', 'Mama Koop', 'What are we doing for lunch?', TIMESTAMP '2018-04-13 19:45:00', TRUE, 2001);

DELETE FROM emails WHERE id=002;

UPDATE emails SET read=FALSE WHERE id=003;

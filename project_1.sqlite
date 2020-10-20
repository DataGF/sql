/* THE IMPORTANCE OF DATA AND SQL BASICS
Project 1 - Create a Table
In this project, I created a table and add/delete data from it!

Feel free to add more columns, insert more data, and create more tables to train even more. */

CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Jane Doe', '1990-05-30');

SELECT *
FROM friends;

INSERT INTO friends (id, name, birthday)
VALUES (2, 'Michael Jackson', '1958-08-29');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'Michael Jordan', '1963-02-17');

SELECT *
FROM friends;

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

SELECT *
FROM friends;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'jane@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'euda_alves@hotmail.com'
WHERE id = 2;

UPDATE friends
SET email = 'sofia.rg2005@gmail.com'
WHERE id = 3;

SELECT *
FROM friends;

DELETE FROM friends
WHERE id = 1;

SELECT * 
FROM friends;

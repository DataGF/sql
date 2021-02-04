/* COMPOSIN AND RUNNING BASIC SQL QUERIES
Project 5 - Basic SQL Queries
In this project I created five basic SQL statements 
to create tables, insert data, select results, update, and delete data */

DROP TABLE INSTRUCTOR
;

CREATE TABLE INSTRUCTOR (
	ins_id INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(60) NOT NULL,
	firstname VARCHAR(60) NOT NULL,
	city VARCHAR(60),
	country CHAR(2)
	)
;

INSERT INTO INSTRUCTOR 
	(ins_id, lastname, firstname, city, country)
VALUES
	(1, 'Ahuja', 'Rav', 'Toronto', 'CA')
;

INSERT INTO INSTRUCTOR 
	(ins_id, lastname, firstname, city, country)
VALUES
	(2, 'Chong', 'Raul', 'Toronto', 'CA'),
	(3, 'Vasudevan', 'Hima', 'Chicago', 'US')
;

SELECT * FROM INSTRUCTOR
;

SELECT firstname, lastname, country FROM INSTRUCTOR
WHERE city = 'Toronto'
;

UPDATE INSTRUCTOR
SET city = 'Markham'
WHERE ins_id = 1
;

DELETE FROM INSTRUCTOR
WHERE ins_id = 2
;

SELECT * FROM INSTRUCTOR
;

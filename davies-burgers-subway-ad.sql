/* Davie's Burgers Subway Ad

Davie’s Burgers restaurant business has been booming and it is now looking to place a catchy advertisement in the local subway station.
Help them dig into their orders table to see if there is anything interesting in there for a funny tagline!

*/

 -- Start by getting a feel for the orders table:

SELECT *
FROM orders
LIMIT 10;

-- How recent is this data? Find out all the unique order_date values in this table.

SELECT DISTINCT order_date
FROM orders
ORDER BY order_date DESC;

-- The special_instructions column stores the data where Davie’s Burgers customers leave a note for the kitchen or the delivery. Select only the first 20 special instructions.

SELECT special_instructions
FROM orders
LIMIT 20;

-- There seem to be a lot of empty values in that column. That is because customers sometimes leave the notes section blank. Can you edit the query so that we are only returning the special instructions that are not empty?

SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
LIMIT 20;

-- Let’s go even further and sort the instructions in alphabetical order (A-Z).

SELECT special_instructions
FROM orders
WHERE special_instructions IS NOT NULL
ORDER BY special_instructions
LIMIT 20;

-- Awesome! Now we have a good idea of the list. Let’s search for special instructions that have the word ‘sauce’. Are there any funny or interesting ones?

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%sauce%';

-- Let’s search for special instructions that have the word ‘door’. Any funny or interesting ones?

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%door%';

-- Let’s search for special instructions that have the word ‘box’. Any funny or interesting ones?

SELECT special_instructions
FROM orders
WHERE special_instructions LIKE '%box%';

-- Wow, some of these are marketing gold! But what are their order numbers? Instead of just returning the special instructions, also return their order ids. For more readability: Rename id as ‘#’ and rename special_instructions as ‘Notes’

SELECT 
  id AS '#',
  special_instructions AS 'Notes'
FROM orders
WHERE special_instructions LIKE '%box%';

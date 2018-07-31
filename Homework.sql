
USE sakila;

SELECT first_name, last_name 
FROM actor;

SELECT CONCAT (first_name,  ' ', last_name) AS ' Actor Name'
FROM actor;

 SELECT actor_id, first_name, last_name 
FROM actor
WHERE first_name = 'JOE';

SELECT actor_id, first_name, last_name 
FROM actor
WHERE last_name LIKE '%GEN%';

SELECT actor_id, first_name, last_name 
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;


SELECT country_id,  country
FROM country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

SELECT * FROM actor;
ALTER TABLE actor
ADD COLUMN  description BLOB;

ALTER TABLE actor
DROP COLUMN description;

SELECT last_name, COUNT(*) AS `Count`
FROM actor
GROUP BY last_name;

SELECT last_name, COUNT(*) AS `Count`
FROM actor
GROUP BY last_name
HAVING Count > 2;


UPDATE actor 
SET first_name= 'HARPO'
WHERE first_name='GROUCHO' AND last_name='WILLIAMS';

UPDATE actor 
SET first_name= 'GROUCHO'
WHERE first_name='HARPO' AND last_name='WILLIAMS';

SHOW CREATE TABLE address;

SELECT staff.first_name, staff.last_name, address.address
FROM staff
LEFT JOIN address on staff.address_id = address.address_id;

SELECT payment.staff_id, staff.first_name, staff.last_name, payment.amount, payment.payment_date
FROM staff INNER JOIN payment ON
staff.staff_id = payment.staff_id
GROUP BY payment.staff_id

SELECT f.title, COUNT(a.actor_id) AS 'TOTAL'
FROM film f LEFT JOIN film_actor  a ON f.film_id = a.film_id
GROUP BY f.title;


USE Sakila;
SELECT title FROM film
WHERE language_id in
	(SELECT language_id 
	FROM language
	WHERE name = "English" )
AND (title LIKE "K%") OR (title LIKE "Q%");


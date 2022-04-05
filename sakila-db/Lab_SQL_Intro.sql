/* no 1. Use sakila database */
use sakila;

/* no 2. Get all the data from tables actor, film and customer */
SELECT * FROM actor;
/* 200 actors are listed */
SELECT * FROM film;
/* 1000 films are listed */
SELECT * FROM customer;
/* 599 cutomers are listed */

/* no 3. Get film titles */
SELECT title FROM film;

/* no 4. Get unique list of film languages under the alias language.
Note that we are not asking you to obtain the language per each film,
but this is a good time to think about how you might get that
information in the future.*/
SELECT DISTINCT name "language" FROM language;
/*or*/
SELECT group_concat(DISTINCT name) AS language FROM language;

/*BONUS no 4.*/
SELECT DISTINCT name FROM language l 
inner join film f on f.language_id = l.language_id;

/*no 5.
no 5.1 Find out how many stores does the company have?*/
SELECT COUNT(store_id) AS "Number of stores" FROM store;
/*no 5.2 Find out how many employees staff does the company have?*/
SELECT COUNT(staff_id) AS "Number of employees" FROM staff;
/*5.3 Return a list of employee first names only?*/
SELECT first_name FROM staff WHERE staff_id in (SELECT staff_id FROM staff);

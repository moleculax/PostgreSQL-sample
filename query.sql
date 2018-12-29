--http://www.postgresqltutorial.com

SELECT * FROM  customer;

SELECT  first_name,  last_name,  email FROM  customer;

SELECT  first_name,  last_name FROM  customer ORDER BY  first_name ASC;

SELECT  first_name,  last_name FROM  customer ORDER BY  first_name ASC,  last_name DESC;

SELECT last_name, first_name FROM customer WHERE first_name = 'Jamie';

SELECT customer_id,  amount,  payment_date FROM payment WHERE amount <= 1 OR amount >= 8;

--USO DE LIMIT
SELECT  film_id,  title,  release_year FROM  film ORDER BY  film_id LIMIT 5;
SELECT  film_id,  title,  rental_rate FROM  film ORDER BY  rental_rate DESC LIMIT 10;

--USO DE OFFSET
SELECT  film_id,  title,  release_year FROM  film ORDER BY  film_id LIMIT 4 OFFSET 3;

SELECT film_id,title FROM film ORDER BY title FETCH FIRST ROW ONLY;
SELECT film_id,title FROM film ORDER BY title FETCH FIRST 5 ROW ONLY;

--OPERADOR IN
--Se utiliza "in" para averiguar si el valor de un campo está 
--incluido en una lista de valores especificada.

SELECT  customer_id,rental_id,return_date FROM rental WHERE customer_id IN (1, 2) ORDER BY return_date DESC;

--CONSULTA EQUIVALENTE A USAR EL OPERADOR IN.
SELECT  rental_id,customer_id,return_date FROM rental WHERE  customer_id = 1 OR customer_id = 2 ORDER BY  return_date DESC;

--OPERADOR NOT  IN
SELECT customer_id,rental_id,return_date FROM rental WHERE customer_id NOT IN(1,2)  ORDER BY customer_id asc;
--ES EQUIVALENTE A:

SELECT  customer_id,  rental_id,  return_date FROM  rental WHERE  customer_id <> 1 AND customer_id <> 2 ORDER BY customer_id asc;

--IN CON SUBCONSULTAS.
SELECT customer_id  FROM  rental  WHERE  CAST (return_date AS DATE) = '2005-05-27';
SELECT first_name,last_name FROM customer WHERE customer_id IN (SELECT customer_id  FROM  rental  WHERE  CAST (return_date AS DATE) = '2005-05-27');


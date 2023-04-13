USE sakila;

-- 1. Drop column picture from staff.

 ALTER TABLE staff
DROP COLUMN picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

-- checking info about Tammy in the customer table:
SELECT * FROM customer
WHERE first_name = "Tammy" AND last_name = "Sanders";

-- adding info about a new employee to Staff table:
INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update) 
VALUES
(3,'Tammy',"Sanders",79,"Tammy.Sanders@sakilacustomer.org",2,1,"Tammy","fsjfhdpjfhkds","2023-04-12 01:37:00");

-- checking new entry
SELECT * FROM staff;

-- I do not remove Tammy from Customer table, because it will require removing all her historic data as a customer.


-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there. 
-- You can query those pieces of information. For eg., you would notice that you need customer_id information as well. 

-- checking information required by rental table:
SELECT * FROM rental;

SELECT * from customer
WHERE first_name = 'CHARLOTTE' and last_name = 'HUNTER';

-- adding a new rental with all the required info:
INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update) 
VALUES
(16050,'2023-04-12 16:03:00',9,130,null,1,'2023-04-12 16:03:00');

-- checking a new rental:
SELECT * FROM rental
WHERE rental_date > "2023-04-11";
use linkedin_jobs;

-- Retrieve all the data from the tables actor, film and customer.
SELECT 
    count(*)
FROM
    da_jobs;

SELECT 
    count(*)
FROM
    mix_jobs;

SELECT 
    *
FROM
    customer;
    
    
-- Retrieve the following columns from their respective tables:

   
	-- Titles of all films from the film table
    
SELECT 
    title
FROM
    sakila.film;
	-- List of languages used in films, with the column aliased as language from the language table
    
SELECT 
    language.name
FROM
    sakila.language;
    
    -- List of first names of all employees from the staff table
    
SELECT 
    staff.first_name
FROM
    sakila.staff;
    
-- Retrieve unique release years.

SELECT DISTINCT
    film.release_year
FROM
    sakila.film;
    
    
-- Counting records for database insights:

	-- Determine the number of stores that the company has.
SELECT 
    COUNT(store_id) AS 'Number of Stores'
FROM
    sakila.store;
    
	-- Determine the number of employees that the company has.
SELECT 
    COUNT(active) as "Number of Employees"
FROM
    sakila.staff;
    
    -- Determine how many films are available for rent and how many have been rented.
  
SELECT 
    COUNT(inventory_id) AS 'Total Films'
FROM
    sakila.inventory;
    
SELECT 
    COUNT(rental_date) AS 'Films have been rented'
FROM
    sakila.rental;
    
    
	-- Determine the number of distinct last names of the actors in the database.
    
SELECT DISTINCT
    actor.last_name
FROM
    sakila.actor;

    
    -- Retrieve the 10 longest films.
    
SELECT 
    film.title
FROM
    sakila.film
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT".

select *
from sakila.actor
where first_name = "SCARLETT";

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT 
    *
FROM
    sakila.film
WHERE
    title LIKE '%ARMAGEDDON%';
    
 -- Determine the number of films that include Behind the Scenes content   
 
 SELECT 
    COUNT(*) AS 'Films with Behind the scenes'
FROM
    sakila.film
WHERE
    special_features LIKE '%Behind the scenes%';
 


    
# INNER Join
/*
Select inventory.inventory_id -- ( This statemnet need table.column_name because inventory_id is in both tables )
From inventory
	inner join rental
		on inventory.inventory_id = rental.inventory_id
        
limit 5000;
*/

# Practice Example
/*
Select film.film_id,inventory.store_id,film.title,film.description
 from film
	inner join inventory
		on film.film_id = inventory.film_id;
*/

# LEFT Join (also Return Null Values)
/*
select inventory.inventory_id, rental.inventory_id
from inventory
Left join rental    -- Use Inner Join and see the result compare the Null value row number 5
	on inventory.inventory_id = rental.inventory_id

Limit 5000
*/

# Practice Example
/*
Select 
	film.title,
#     film_actor.actor_id
    count(film_actor.actor_id) AS Actor_Count
from film
left join film_actor
	on film.film_id = film_actor.film_id
group by film.title
*/

# Bridge Example (Joining more than 2 Table)
/*
SELECT 
    film.film_id, film.title, category.name
FROM
    film
        INNER JOIN
    film_category 
		ON film.film_id = film_category.film_id
        INNER JOIN
    category 
		ON film_category.category_id = category.category_id
              */
              
# Multi-Condition Joins   
/*
SELECT 
    film.film_id, film.title, category.name
FROM
    film
        INNER JOIN
    film_category 
		ON film.film_id = film_category.film_id
        INNER JOIN
    category 
		ON film_category.category_id = category.category_id
		AND category.name="horror" -- (Condition USed with AND)
    */

# UNION Example
/* 
Select 
	'advisor' AS Type, -- (This statement is used to denote the value category)
    first_Name,
    Last_name
from advisor
UNION
Select 
	'investor' AS Type,
    first_Name,
    Last_name
from investor
*/






              
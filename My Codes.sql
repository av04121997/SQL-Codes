# WildCards LIKE or Not LIKE
/*
 select title,description
 from film

-- Run the below code to understand the Wildcards (remove -- )

 where description LIKE '%Epic%' -- any number of character can come BEFORE and AFTER Epic wiyh double %
 where description LIKE '%China' -- forward single % ( End with China )
 where title LIKE '_LADDIN CALENDAR' 
 where title NOT LIKE '_LADDIN CALENDAR' 

-- Select title, special_features -- Practice Example
-- From film
-- where special_features like '%Behind the Scenes'
*/

# GROUP BY (Comes after WHERE Caluse) (Before HAVING or ORDER BY)
/*
select rating, count(film_id)	
from film
group by rating
*/

# ALIASES - AS (Add new col. and make code more readable)
/*
select rating,
count(film_id),
count(film_id) AS FILM_RATING
from film
group by rating
*/

# Practice Qns
/*
select rental_duration, 
	count(title)as rental_duration_of_films
from film
group by rental_duration
*/

# Multiple Dimension Group By (With more columns)
/*
select rental_duration,rating,replacement_cost,
count(film_id) as films_with_this_rental_duration
From film
group by rental_duration,rating,replacement_cost
*/

# Aggegated functions
/*
(Select rating,
count(film_id) AS COUNT_OF_FILMS,
min(length)AS SHORTEST_DURATION_OF_FILMS,
Max(length)AS LONGEST_DURATION_OF_FILMS,
sum(length) AS SUM_OF_TOTAL_LENGTH,
avg(length) AS AVERAGE_LENGTH
from film
group by rating)
*/

# Having Clause
/*
Select customer_id,
	count(customer_id) as Total_rental        -- or count(*) as Total_rental (USE of astric)
	from rental
group by customer_id
Having count(customer_id)>=30
*/

# Practice Having
/*
select customer_id,
	count(rental_id) AS RENTALS
    from rental
    group by customer_id
    having count(rental_id) < 15
    */
  
# CASE Statement ( When / Then Statement )
/*
Select distinct title,
	case
		when rental_duration<=4 then 'Too_short_to_Watch'
        when rental_rate >= 3.99 then'too_costly_to_buy'
        when rating in ('NC-17','R') then 'adult_watch'
        when length not between 60 and 90 then'too_short_or_too_long'
        when description like '%shark% then' then 'no_it_has_shark'
        Else 'perfect_Movie'
	END as Fit_for_recoomendation
from film

 */
 
 # Practice Example 
 /*
 Select first_name, last_name,
	case
		when store_id=1 and active = 1 then 'Store_1_active'
        when store_id =1 and active = 0 then 'Store_1_inactive'
		when store_id =2 and active = 1 then 'Store_2_active'
        when store_id =2 and active = 0 then 'Store_2_inactive'
        else 'OOps see your logic'
	end as Store_and_Status
 from customer
 */
 
 # CASE Pivot Method (Count and Case Use)
 /*
 Select film_id,
 count(case when store_id =1 then inventory_id else null end) as Count_Store_1,
 count(case when store_id =2 then inventory_id else null end) as Count_store_2
 From inventory
 group by film_id
 order by film_id
 */
 
# Practice Example
/*
Select store_id,
	count(case when active =1 then customer_id else null end) as active,
    count(case when active =0 then customer_id else null end) as inactive    
from customer
group by store_id
*/

    
    
    
    
    
    
    
    
    
    
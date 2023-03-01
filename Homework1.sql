--How many actors with the last name 'Wahlberg'? 
-- 2

select count(last_name)
from actor
where last_name like 'Wahlberg'

--How many payments made between $3.99 and $5.99?
-- 3,230

select count(amount)
from payment
where amount < 5.99 and amount > 3.99

--What film does the store have the most of? 
--72 Films are tied for first place. 

select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;

--How many customers have the last name ‘William’? 
-- 0
select *
from customer

select count(last_name)
from customer
where last_name like 'William'


--What store employee (get the id) sold the most rentals? 
-- 1

select staff_id, count(staff_id)
from rental
group by staff_id 
order by count(staff_id) desc;

--6. How many different district names are there? 
-- 378

select count(distinct district)
from address

--7. What film has the most actors in it? (use film_actor table and get film_id) 
-- film 508

select film_id, count(actor_id)
from film_actor
group by film_id 
order by count(actor_id) desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
-- 13

select count(last_name)
from customer
where last_name like '%es' and store_id = 1

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
-- 3 payment amounts.
select amount, count(amount)
from payment
where customer_id > 380 and customer_id < 430
group by amount
having count(amount) > 250
order by count(amount) desc;

--10. Within the film table, how many rating categories are there? 
-- 5

select count(distinct rating)
from film

-- And what rating has the most movies total?
-- PG-13
select rating, count(rating)
from film
group by rating
order by count(rating) desc limit 1;































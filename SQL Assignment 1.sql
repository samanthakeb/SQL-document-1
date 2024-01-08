-- How many actors are there with the last name 'Wahlberg'?
select last_name
from actor
where last_name = 'Wahlberg';

-- How many payments were made between $3.99 and $5.99? ***
select COUNT(amount)
from payment
where amount between 3.99 and 5.99;

select * from payment;

-- What film does the store have the most of? search in inventory ***
select film_id, COUNT(inventory_id)
from inventory 
group by film_id 
order by count(inventory_id) desc;

select * from inventory;

-- How many customers have the last name 'William'?
select count(last_name)
from customer
where last_name = 'William';

-- What store employee (get the id) sold the most rentals?
select count(inventory_id), staff_id
from rental
group by staff_id;

-- How many different district names are there?
select count(distinct district)
from address;

-- What film has the most actors in it? (use film_actor table and get film_id)
select COUNT(actor_id), film_id
from film_actor
group by film_id 
order by COUNT(actor_id) desc;

-- From store_id 1, how many customers have a last name ending with 'es'?
select COUNT(last_name), store_id
from customer
where last_name like '%es'
group by store_id;

-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals ***
-- above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select COUNT(amount), amount
from payment 
where customer_id between 380 and 430
group by amount 
having COUNT(amount) > 250;	

select COUNT(amount), customer_id
from payment 
where customer_id between 380 and 430
group by customer_id 
having COUNT(amount) > 250;

select * from payment;

-- Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, COUNT(title)
from film
group by rating;


select * from film;







  


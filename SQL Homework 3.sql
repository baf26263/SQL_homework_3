-- Question 1

select first_name, last_name
from customer 
full join address
on customer.address_id = address.address_id 
where district = 'Texas';

-- Question 2

select amount, first_name, last_name
from customer
inner join payment
on customer.customer_id = payment.customer_id
where amount > 6.99

-- Question 3

select first_name,last_name
from customer 
where customer_id in(
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 175
);

-- Question 4

select customer.first_name, customer.last_name,country
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id
full join country
on city.country_id = country.country_id
where country = 'Nepal';

-- Question 5

select first_name, COUNT(staff)
from staff
inner join payment
on staff.staff_id = payment.staff_id
group by first_name

-- Question 6

select rating, count(rating)
from film 
group by rating 
order by count(rating) desc;

-- Question 7

select first_name,last_name, amount
from customer 
inner join payment 
on customer.customer_id = payment.customer_id 
where amount in(
	select amount
	from payment 
	where amount > 6.99
	group by amount
);

-- Question 8

select count(rental.rental_id)
from rental
full join payment 
on payment.rental_id = rental.rental_id
where payment.amount = 0;


































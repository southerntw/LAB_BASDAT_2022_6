#Paket C
#10 
#SNH0201
SELECT actor.actor_id, actor.first_name, actor.last_name from actor
JOIN film_actor
USING (actor_id)
JOIN film
USING(film_id)
JOIN film_category
USING (film_id)
join category
using(category_id)
GROUP BY actor.actor_id
HAVING count(DISTINCT category.name) = "13";

#Paket C 
#4 
#ALM0101
select concat(first_name, " ", last_name) AS fullname, city, country
from customer
join address using (address_id)
join city using (city_id)
join country using (country_id)   
where country LIKE "ind%" or "%na";

#Paket A
#13 
#AZV0101
SELECT distinct f.title, ca.name
FROM customer AS c
JOIN rental AS r
ON c.customer_id = r.customer_id
JOIN inventory AS i
ON r.inventory_id = i.inventory_id
JOIN film AS f
ON i.film_id = f.film_id
JOIN film_category AS fc
ON f.film_id = fc.film_id
JOIN category AS ca
ON fc.category_id = ca.category_id
WHERE c.first_name NOT LIKE '%AARON%';

#Paket C
#15 
#TKV0101
SELECT DISTINCT film.title, category.name category from actor
JOIN film_actor
USING (actor_id)
JOIN film
USING(film_id)
JOIN film_category
USING (film_id)
join category
using(category_id)
where category.name IN (SELECT category.name from actor
JOIN film_actor
USING (actor_id)
JOIN film
USING(film_id)
JOIN film_category
USING (film_id)
join category
using(category_id)
where film.title like "pulp%") AND 
actor.actor_id in (SELECT actor.actor_id from actor
JOIN film_actor
USING (actor_id)
JOIN film
USING(film_id)
JOIN film_category
USING (film_id)
join category
using(category_id)
where film.title like "pulp%") AND film.title <> 'PULP BEVERLY' ORDER BY film.title LIMIT 1;

#Paket A
#5 
#TKH0401
SELECT DISTINCT concat(customer.first_name," ",customer.last_name) "Nama Lengkap" from customer
JOIN rental
USING (customer_id)
JOIN Inventory
USING (Inventory_id)
JOIN film
USING (film_id)
JOIN film_category
USING (film_id)
JOIN category
USING (category_Id)
WHERE category.name <> "Horror";

#Paket A
#10 
#AZM0201
Select concat(first_name, " ", last_name) AS FullName, country from customer
join address using (address_id)
join city using (city_id)
join country using (country_id)
where country = "Indonesia";

#Paket C 
#5
#AZM0201
select concat(first_name, " ", last_name) AS fullname, title, rental_date, return_date, datediff(return_date, rental_date) AS Deadline
from customer
join rental using (customer_id)
join inventory using (inventory_id)
join film using (film_id)
where (Select datediff(return_date, rental_date) AS Deadline) > rental_duration;

#Paket A 
#8 
#AWM0101
select title as "Judul Film", name as Kategori from film
join film_category using (film_id)
join category using (category_id)
where title like 'a%' or title like 'i%' or title like 'u%' or title like 'e%' or title like 'o%'
order by substring(title, length(title)-1, 2);

#Paket C
#7  
#FAM0101
SELECT DISTINCT film.film_id, film.title judul, film.special_features fitur, category.name genre from store
join inventory
USING (Store_id) 
join film
USING (film_id)
join film_category
USING (film_id)
join category
USING (category_id)
WHERE category.name like "docu%" AND film.special_features NOT IN 
(Select film.special_features from film WHERE film.special_features like "trail%");

#Paket A
#6 
#FAM0301
select title,length minute, name as "Bahasa",
case 
	when length > 60 Then "Film Panjang"
    else "Film Pendek"
END AS "Kategori Film"
from film
join language using (language_id);


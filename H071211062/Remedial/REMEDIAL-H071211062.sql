#Paket C
#NOMOR 15 #TKV0101
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
#NOMOR 15 #AWV0101
SELECT @rata_rata := AVG(jumlah_film) 
FROM (
	SELECT COUNT(title) jumlah_film 
	FROM film JOIN inventory USING (film_id)
	JOIN rental USING (inventory_id)
	JOIN customer USING (customer_id)
	JOIN address USING (address_id)
	JOIN city USING (city_id)
	GROUP BY first_name
) AS subquery1;

SELECT first_name, DATEDIFF(return_date, rental_date) Selisih, `city`, COUNT(title) jumlah_film,
CASE
WHEN COUNT(title) > @rata_rata THEN 'diatas rata-rata'
ELSE 'dibawah rata-rata'
END AS Kategori,
GROUP_CONCAT(title, ' || ') filmnya
FROM film
JOIN inventory USING (film_id)
JOIN rental USING (inventory_id)
JOIN customer USING (customer_id)
JOIN address USING (address_id)
JOIN city USING (city_id)
join country using (country_id)
where country = 'Germany'
GROUP BY first_name;

#Paket C
#NOMOR 6 #AWM0201
SELECT customer.first_name,country.country, film.title from film 
JOIN inventory
USING (film_id)
JOIN rental
USING (inventory_id)
JOIN customer
USING (customer_id)
JOIN address
USING (address_id)
JOIN city
USING (city_id)
JOIN country
USING (country_id)
WHERE year(rental_date) = year(curdate() - interval 16 YEAR) AND rating in ("G") ORDER BY country;

#Paket C 
#NOMOR 4 #ALM0101
select concat(first_name, " ", last_name) AS fullname, city, country
from customer
join address using (address_id)
join city using (city_id)
join country using (country_id)   
where country LIKE "ind%" or "%na";

#Paket C
#NOMOR 7  #FAM0101
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

#Paket C
#NOMOR 10 #SNH0201
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
#NOMOR 5 #AZM0201
select concat(first_name, " ", last_name) AS fullname, title, rental_date, return_date, datediff(return_date, rental_date) AS Deadline
from customer
join rental using (customer_id)
join inventory using (inventory_id)
join film using (film_id)
where (Select datediff(return_date, rental_date) AS Deadline) > rental_duration;

#Paket A
#NOMOR 5 #TKH0401
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
#NOMOR 13 #AZV0101
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

#Paket A
#NOMOR 10 #AZM0201
Select concat(first_name, " ", last_name) AS FullName, country from customer
join address using (address_id)
join city using (city_id)
join country using (country_id)
where country = "Indonesia";
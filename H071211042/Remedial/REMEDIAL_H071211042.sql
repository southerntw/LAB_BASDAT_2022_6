#4 #ALM0101
#Paket C 

select concat(first_name, " ", last_name) AS fullname, city, country
from customer
join address using (address_id)
join city using (city_id)
join country using (country_id)   
where country LIKE "ind%" or "%na";

#5 #AZM0201
#Paket C 

select concat(first_name, " ", last_name) AS fullname, title, rental_date, return_date, datediff(return_date, rental_date) AS Deadline
from customer
join rental using (customer_id)
join inventory using (inventory_id)
join film using (film_id)
where (Select datediff(return_date, rental_date) AS Deadline) > rental_duration;

#8 #TKM0101
#Paket C 

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

#15 #AWV0101
#Paket A

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


#4 #YUM0101
#Paket A

Select name as category, count(rating) "Rating PG-13" from category
join film_category
using (category_id)
join film
using (film_id)
where film.rating = "PG-13"
group by name
order by count(rating) DESC
LIMIT 3;

#10 #AZM0201
#Paket A

Select concat(first_name, " ", last_name) AS FullName, country from customer
join address using (address_id)
join city using (city_id)
join country using (country_id)
where country = "Indonesia";

#6 #FAM0301
#Paket A

select title,length minute, name as "Bahasa",
case 
	when length > 60 Then "Film Panjang"
    else "Film Pendek"
END AS "Kategori Film"
from film
join language using (language_id);

#8 #AWM0101
#Paket A 

select title as "Judul Film", name as Kategori from film
join film_category using (film_id)
join category using (category_id)
where title like 'a%' or title like 'i%' or title like 'u%' or title like 'e%' or title like 'o%'
order by substring(title, length(title)-1, 2);

#13 #AZV0101
#Paket A 

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



#5 #TKH0401
#Paket A

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

    
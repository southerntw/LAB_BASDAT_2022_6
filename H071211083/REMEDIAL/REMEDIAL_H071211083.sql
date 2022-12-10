USE sakila

#soal paket A nomor 4 #YUM0101 (selesai)
SELECT c.name AS `Category`, COUNT(f.rating) AS `Rating PG-13`
FROM film AS f
JOIN film_category AS fc
USING (film_id)
JOIN category AS c
USING (category_id)
WHERE f.rating = 'PG-13'
GROUP BY c.name 
ORDER BY `Rating PG-13` DESC LIMIT 3;

#soal paket A nomor 10 #AZM0201 (selesai)
SELECT CONCAT_WS(' ', c.first_name, c.last_name) AS Nama, o.country
FROM customer c JOIN address a USING(address_id) JOIN
city i USING(city_id) JOIN country o USING(country_id)
WHERE o.country = 'Indonesia';

#soal paket C Nomor 4 #ALM0101 (selesai)
SELECT CONCAT(c.first_name, c.last_name) AS 'fullname', 
i.city, o.country FROM customer c JOIN  address a USING(address_id) 
JOIN city i USING(city_id)
JOIN country o USING(country_id) WHERE o.country LIKE 'ind%' OR o.country LIKE '%na';

#soal paket A nomor 6 #FAM0301 (selesai)
SELECT f.title, f.length/60 AS durasi, case
when f.length/60 > 1 then "film panjang"
when f.length/60 < 1 then "film pendek"
ELSE "film" end
 FROM film f
 
 #soal paket A nomor 8 #AWM0101 (selesai)
SELECT c.name, f.title FROM category c JOIN film_category fc USING(category_id)
JOIN film f USING(film_id) WHERE f.title RLIKE "^[aiueo]"
GROUP BY c.name
ORDER BY RIGHT(f.title, 2) ASC;


#soal paket C nomor 7 #FAM0101 (selesai)
SELECT film.film_id AS film_id, film.title AS Judul, film.special_features AS fitur,
category.name AS genre FROM film JOIN film_category USING(film_id)
JOIN category USING(category_id) WHERE film.title NOT IN 
(SELECT title FROM film WHERE special_features LIKE '%trailer%')

#soal paket A nomor 13 #AZV0101 (selesai very hard)
SELECT distinct film.title, category.name
FROM film JOIN film_category USING(film_id) JOIN category USING(category_id) 
JOIN inventory USING(film_id) JOIN rental USING(inventory_id) JOIN customer USING(customer_id)
WHERE customer.first_name NOT IN  ('Aaron')

#soal paket A nomor 5 #TKH0401 (Selesai)
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

#nomor 15 A #AWV0101(very hard selesai)
SELECT first_name, DATEDIFF(return_date, rental_date) Selisih, `city`, COUNT(title) jumlah_film,
CASE
WHEN COUNT(title) > @rata_rata THEN 'diatas rata-rata'
ELSE 'dibawah rata-rata'
END AS Keterangan,
GROUP_CONCAT(title, ' || ') List_Film
FROM film
JOIN inventory USING (film_id)
JOIN rental USING (inventory_id)
JOIN customer USING (customer_id)
JOIN address USING (address_id)
JOIN city USING (city_id)
join country using (country_id)
where country = 'Germany'
GROUP BY first_name;

# soal paket A nomor 11 #TKM0201
SELECT CONCAT(UPPER(LEFT(customer.first_name,1)), LOWER(SUBSTR(customer.first_name,2)),' ', 
UPPER(LEFT(customer.last_name,1)), LOWER(SUBSTR(customer.last_name,2))) AS `Nama Pelanggan`, 
COUNT(*) AS 'jumlah film yang pernah di rental'
FROM customer
JOIN rental
USING(customer_id)
JOIN inventory
USING(inventory_id)
JOIN film
USING(film_id)
JOIN film_category
USING(film_id)
JOIN category
USING(category_id)
WHERE category.name IN ('horror', 'comedy')
GROUP BY customer_id
ORDER BY 'jumlah film yang pernah di rental' DESC LIMIT 3;











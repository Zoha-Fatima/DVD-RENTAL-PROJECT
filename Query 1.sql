-- 2.Show all film in COMEDY genre (using JOIN and WHERE clause)

SELECT film.film_id,film. title,category.name, film.description 
FROM film
FULL OUTER JOIN film_category
ON film.film_id = film_category.film_id
FULL JOIN category
ON film_category.category_id= category.category_id
WHERE category.name = 'Comedy';






 
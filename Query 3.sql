-- 3.find how many inventory of movie 'Dark' is available at each store (using GROUP BY)

Select count(inventory.store_id),inventory.store_id,inventory.film_id, film.title, film.description 
from inventory 
full outer join film on inventory.film_id=film.film_id
where film.title LIKE '%Dark%'
group by inventory.store_id,inventory.film_id, film.title, film.description;







 
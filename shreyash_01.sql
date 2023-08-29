select actor.first_name || ' ' || actor.last_name as actor_name,
        film.title,
        film.release_year
from film
    join film_actor on film_actor.film_id = film.film_id
    join actor on actor.actor_id = film_actor.actor_id
order by film.release_year desc
limit 25;
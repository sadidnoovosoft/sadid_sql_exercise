with sci_rental as (
    select f.film_id as film_id,
           f.rental_rate as rental_rate
        from film as f
        join film_category using (film_id)
        join category as c using (category_id)
    where c.name = 'Sci-Fi'
),
sci_max_rental as (
    select film_id, rental_rate
        from sci_rental
    where rental_rate in (
        select max(rental_rate) from sci_rental
    )
)
select a.first_name || ' ' || a.last_name as actor_name,
       count(1) as count,
       max(sf.rental_rate) as rental_rate
from actor as a
    join film_actor using (actor_id)
    join sci_max_rental as sf using(film_id)
group by actor_name
order by count desc
limit 3;
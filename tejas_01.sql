with actor_film as (
    select first_name || ' ' || last_name as name,
           film_id
    from actor
        join film_actor using (actor_id)
)
select a1.name as actor_1,
       a2.name as actor_2,
       count(1) as film_count
from actor_film as a1
    join actor_film as a2 using (film_id)
where a1.name != a2.name
group by actor_1, actor_2
order by film_count desc
limit 1;
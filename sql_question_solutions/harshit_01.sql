select customer_name, actor_name, count(1) as count from (
        select distinct cust.first_name || ' ' || cust.last_name as customer_name,
                        actor.first_name || ' ' || actor.last_name as actor_name,
                        i.film_id as film_id
        from actor
            join film_actor using (actor_id)
            join inventory as i using (film_id)
            join rental using (inventory_id)
            join customer as cust using (customer_id)
    ) as customer_actor
group by customer_name, actor_name
order by count desc;


select f.title, count(1) as count from film as f
    join inventory as i on f.film_id = i.film_id
    join rental as r on i.inventory_id = r.inventory_id
    join store as s on i.store_id = s.store_id
    join address as a on s.address_id = a.address_id
    join city as c on a.city_id = c.city_id
where c.country_id = 8
group by f.film_id
order by count desc
limit 10;
select dt.country, sum(dt.days_rented)/5 as average_duration
from (
    select country.country, rented.days_rented,
            rank() over (partition by country.country
                         order by rented.days_rented desc) as rank
    from
        (
            select f.title,
                extract(days from sum(r.return_date - r.rental_date + interval '1 day')) as days_rented,
                i.store_id as store_id
                from film as f
                join inventory as i using (film_id)
                join rental as r using (inventory_id)
            group by f.film_id, store_id
        )  as rented
        join store using (store_id)
        join address using (address_id)
        join city using (city_id)
        join country using (country_id)
    ) as dt
where dt.rank <= 5
group by dt.country;


select a.district,
       avg(f.rental_rate * f.rental_duration) as average
from film as f
         join film_category as fc using (film_id)
         join inventory as i using (film_id)
         join rental as r using (inventory_id)
         join customer as c using (customer_id)
         join address as a using (address_id)
where fc.category_id = 2
group by a.district
order by  average desc
limit 10;
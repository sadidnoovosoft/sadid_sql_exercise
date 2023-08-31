select a.address
    from film as f
    join inventory as i using (film_id)
    join rental as r using (inventory_id)
    join staff as s using (staff_id)
    join address as a using (address_id)
where f.release_year = 2006
group by a.address;
select address, address2, district, postal_code, phone
from address
where  address_id in (
    select address_id from staff where staff_id in (
        select staff_id from rental where inventory_id in (
            select inventory_id from inventory where film_id in (
                select film_id from film where release_year = 2006
            )
        )
    )
);
select title, rental_rate, rating,
       CASE rating
           WHEN 'PG-13' THEN 'Inappropriate for children under 13'
           WHEN 'G' THEN 'General'
           WHEN 'R' THEN 'Restricted for Age below 18'
       END as label
from film
where rental_rate = (
        select max(rental_rate) from film
    );



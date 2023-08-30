with category_rank as (
    select extract(month from r.rental_date) as month,
           c.name as category,
           count(1) as count,
           rank() over(partition by extract(month from r.rental_date)
                       order by count(1) desc) as rank
    from category as c
        join film_category using (category_id)
        join film using (film_id)
        join inventory using (film_id)
        join rental as r using (inventory_id)
    where r.rental_date >= '2005-01-01' and
          r.rental_date < '2006-01-01'
    group by month, category
    order by month
)
select month, category, count from category_rank
where rank = 1;
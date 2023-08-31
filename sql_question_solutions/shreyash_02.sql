select s.first_name || ' ' || s.last_name as staff_name,
       sum(p.amount) as total_payment
from staff as s
     join payment as p using (staff_id)
group by staff_name;
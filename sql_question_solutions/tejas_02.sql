select cn.country, sum(length(a.address))/count(1) as average_length
from address as a
    join city using (city_id)
    join country as cn using (country_id)
group by cn.country
order by average_length desc;
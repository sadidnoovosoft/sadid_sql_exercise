select distinct a.first_name || ' ' || a.last_name as name,
                l.name as language
from film as f
         join language as l using (language_id)
         join film_actor as fa using (film_id)
         join actor as a using (actor_id)
group by (a.first_name || ' ' || a.last_name), l.language_id;
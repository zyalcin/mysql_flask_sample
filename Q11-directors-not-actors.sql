use wmdb;

-- people who are not actors (have no acting credits)

select distinct name
from person 
where not exists
    (select *
     from credit
     where credit.nm = person.nm);

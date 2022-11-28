use wmdb; 

select distinct name, title  
from person, movie, credit
where person.nm = credit.nm 
    and credit.tt = movie.tt
    and director = (
        select nm 
        from person 
        where name = 'Ang Lee')
order by title, name 
;

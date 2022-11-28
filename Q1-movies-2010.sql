use movie_lens_db;

/* This SQL code returns (prints) the 
the titles of all movies released in 2010. Sorts them by title. */ 

select title
from movie 
where title like '%(2010%' 
order by title asc;

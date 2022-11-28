use movie_lens_db;

/* This SQL code returns (prints) the 
the title and rating of all movies rated by 
the user with id 610. 
Sorts by rating (descending, so 5 stars first) and then by title (ascending). */ 

select title, rating  
from movie, rating  
where movie.movieId = rating.movieId and userId = 610 
order by rating desc, title asc;
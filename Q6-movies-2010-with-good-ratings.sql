use movie_lens_db;

/* This SQL code returns (prints) the 
titles and average rating of movies from 2010 where the average
is at least a 3.0. Sorts by title. */ 

select title, avg(rating)  
from movie, rating  where movie.movieId = rating.movieId and title like '%(2010%'  
group by rating.movieId  
having avg(rating) >= 3 
order by title;
use movie_lens_db;

/* This SQL code returns (prints) the 
title and average rating of all movies released in 2010.
Sorts by title. */ 

select title, avg(rating)  
from movie, rating 
where movie.movieId = rating.movieId and title like '%(2010%' 
group by movie.movieId 
order by title 
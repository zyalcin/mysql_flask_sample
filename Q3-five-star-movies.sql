use movie_lens_db;

/* This SQL code returns (prints) the 
the  the userId, movieID, and titles of
all movies where the user rated the movie with 5 stars. 
Sorts by title and userid.. */ 

select userId, movie.movieId, title 
from movie, rating
where rating.movieId = movie.movieId and rating.rating in (5) 
order by title asc, userId asc;
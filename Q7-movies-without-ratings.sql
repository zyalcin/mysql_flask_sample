use movie_lens_db;

/* This SQL code returns (prints) the 
titles of movies with no ratings at all. Sorts by title. */ 

select title from movie  
where movie.movieID not in (select movieId from rating)
order by title; 
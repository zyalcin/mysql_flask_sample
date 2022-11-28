use movie_lens_db;

/* This SQL code returns (prints) the 
movies with a range of ratings of at least 3 
and based on at least 10 ratings. That is, the 
query needs to find the lowest rating (say, 1 star)
and the highest (say, 5 stars, which makes 
for a range of 4) and list only those movies where
the range is at least 3, based on at least 10 ratingse.
Sorts by decreasing range and increasing title  */

select title, max(rating)-min(rating) as rating_range 
from movie inner join rating using (movieId)
group by movieId
having count(rating) >= 10 and rating_range >=3 
order by rating_range desc, title 
;

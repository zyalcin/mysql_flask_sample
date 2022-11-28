use movie_lens_db;

/* An example batch file. This SQL code returns (prints) the 
lists the titles and genres of all comedies released in 2010.
A movie that is both a comedy and a drama is listed. 
It is sorted by genre and title. */ 

select title, genres 
from movie 
where genres like '%Comedy%'  and title like '%(2010%' 
order by genres asc, title asc
;
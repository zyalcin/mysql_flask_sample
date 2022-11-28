use wmdb 

/* This SQL code returns (prints) the 
names of actors who directed themselves. 
That is, they acted in a movie where they were the 
director of the movie. You may *not* assume that names are unique.
Sorts by name  */


select distinct name 
from person, movie, credit 
where credit.tt = movie.tt and person.nm = director and person.nm = credit.nm
order by  name 
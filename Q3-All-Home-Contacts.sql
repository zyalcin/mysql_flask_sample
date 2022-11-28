use zy1_db; 

/*  creates a list of each person's name, home address and home phone, 
if the database has both. Note that the query results shouldn't 
include the word home, since that would be boring. 
Output should be name, city, state, and phone number. */ 


select A.name, city, state, phnum 
from addresses A LEFT JOIN phones P using (personID)
where A.kind = 'home' AND P.kind = 'home' 
order by A.name, A.city;

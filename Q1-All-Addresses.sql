use zy1_db;

/* creates a simple list of each person's name and addresses. 
This'll be useful for debugging. The output columns should 
be name, kind of address, city and state. Sort it by name and 
then by city and state. */ 

select name, kind, city, state 
from addresses
order by name, city, state;
 
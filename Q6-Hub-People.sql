use zy1_db; 

/* eports the name and phone number of anyone in 
the 617 area code (any kind of phone).
Columns are name and phone number, sorted by name. */ 

select name, phnum 
from phones
where phnum like "617%" 
order by name; 

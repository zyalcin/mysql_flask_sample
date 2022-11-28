use zy1_db;

/* that creates a simple list of each person's name and phone numbers.
This'll also be useful for debugging. The output columns 
should be name, kind of phone, phone number. */ 


select name, kind, phnum 
from phones
order by name, kind; 
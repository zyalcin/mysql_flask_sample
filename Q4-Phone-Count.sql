use zy1_db; 

/*  tells how many phone numbers each person has. Columns are name and count. */ 


select name, count(phnum)
from phones
group by personID 
order by name; 
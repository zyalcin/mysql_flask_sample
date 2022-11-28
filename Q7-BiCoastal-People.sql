use zy1_db; 

/*  reports the name and addresses of anyone who has both an address 
in MA and one in CA. Columns are name, MA city (city in Massachusetts), 
and CA city (city in California). Sort by name. */ 


select A1.name, A1.city as "MA city", A2.city as "CA city" 
from addresses A1, addresses A2
where A1.personID = A2.personID and A1.state = "MA" and A2.state = "CA" 
order by A1.name; 


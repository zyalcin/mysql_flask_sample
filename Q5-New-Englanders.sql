use zy1_db; 

/*  reports the names of anyone living (home address)
in the states of MA, CT, VT, NH, ME and RI.
Columns are name and state, sorted by name. */ 

select name, state
from addresses 
where kind = 'home' and state in ("MA", "RI", "CT", "VT", "NH", "ME")
order by name; 

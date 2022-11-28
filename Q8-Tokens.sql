use zy1_db; 

select name, state, count(state)
from addresses 
where kind = 'home' 
group by state
having count(state) = 1
order by name; 

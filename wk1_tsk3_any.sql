use littlelemondb;
select menu_id 
from menu
where menu_id = any(select menu_id from orders where quantity > 2);
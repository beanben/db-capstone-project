use littlelemondb;
show tables;
select customerdetail.customer_id, customerdetail.name, orders.order_id, orders.total_costs, menu.main_course, menu.starter
from customerdetail 
join orders on orders.order_id = customerdetail.order_id
join menu on orders.menu_id = menu.menu_id;
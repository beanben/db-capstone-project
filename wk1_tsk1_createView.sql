use littlelemondb;
show tables;
select * from orders;
create view OrdersView as
select order_id, quantity, total_costs from orders where quantity > 2;
Select * from OrdersView;
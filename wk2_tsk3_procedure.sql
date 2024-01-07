use littlelemondb;

DELIMITER //
create procedure CancelOrder(IN p_order_id int)
begin
delete from orders where order_id = p_order_id;
end //
delimiter ;

call CancelOrder(5);
use littlelemondb;

DELIMITER //
create procedure GetMaxQuantity()
begin
select max(quantity) as MaxQuantity from orders;
end //
DELIMITER ;

CALL GetMaxQuantity();
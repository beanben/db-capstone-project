use littlelemondb;

prepare GetOrderDetail from 'select order_id, quantity, total_costs from orders where booking_id = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

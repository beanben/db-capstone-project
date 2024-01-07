use littlelemondb;
drop procedure if exists UpdateBooking;

delimiter //
create procedure UpdateBooking (in p_booking_id int, in p_booking_date date)
begin
update bookings 
set booking_date = p_booking_date
where booking_id = p_booking_id;
end//
delimiter ;

call UpdateBooking(9, "2022-12-17");

select * from bookings;

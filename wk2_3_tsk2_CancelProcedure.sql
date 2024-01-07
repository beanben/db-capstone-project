use littlelemondb;
drop procedure if exists CancelBooking;

delimiter //
create procedure CancelBooking (in p_booking_id int)
	begin
		delete from bookings where booking_id = p_booking_id;
        select concat("Booking ", p_booking_id, " is cancelled.");
	end //
delimiter ; 

call CancelBooking (9);

select * from bookings;

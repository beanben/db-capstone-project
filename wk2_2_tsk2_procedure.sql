use littlelemondb;
drop procedure if exists CheckBooking;

delimiter //
create procedure CheckBooking (in p_booking_date date, in p_table_number int)
	begin
		select
			case
				when count(*) > 0 then concat("Table ", p_table_number, " is already booked")
                else concat("Table ", p_table_number, " is available")
			end as BookingStatus
            
		from bookings
		where table_number = p_table_number and booking_date = p_booking_date;

end //
delimiter ; 

call CheckBooking ("2022-11-12", 3)

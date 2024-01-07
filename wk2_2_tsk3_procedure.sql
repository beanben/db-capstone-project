use littlelemondb;
drop procedure if exists AddValidBooking;

delimiter //
create procedure AddValidBooking (in p_booking_date date, in p_table_number int)
	begin
		DECLARE v_max_booking_id INT;
        DECLARE v_count_bookings INT;
        DECLARE v_customer_id INT DEFAULT 1;
        DECLARE v_message VARCHAR(255);
        
        START TRANSACTION;
        
        SELECT MAX(booking_id) INTO v_max_booking_id FROM bookings;
        
		SELECT COUNT(*) INTO v_count_bookings FROM bookings 
		WHERE table_number = p_table_number AND booking_date = p_booking_date;

		if v_count_bookings = 0 then
			insert into bookings (booking_id, booking_date, table_number, customer_id)
			values (v_max_booking_id+1, p_booking_date, p_table_number, v_customer_id);
			commit;
		else
			SET v_message = CONCAT('Table ', p_table_number, ' is already booked - booking cancelled');
			rollback;
		end if;
        
        SELECT v_message AS Message;

	end //
delimiter ; 

call AddValidBooking ("2022-11-17", 6)

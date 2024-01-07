use littlelemondb;
drop procedure if exists AddBooking;

delimiter //
create procedure AddBooking (in p_booking_id int, in p_customer_id int, in p_booking_date date, in p_table_number int)
begin
insert into bookings (booking_id, booking_date, table_number, customer_id)
values (p_booking_id, p_booking_date, p_table_number, p_customer_id);
select "New booking added";
end//
delimiter ;

call AddBooking(10, 3, "2022-12-30", 4);

select * from bookings;

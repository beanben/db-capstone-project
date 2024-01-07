use littlelemondb;

-- insert into customerdetail (customer_id, name, contact)
-- values
-- (1, "bob", 001),
-- (2, "meuf", 002),
-- (3, "chantale", 003),
-- (4, "robert", 004);

-- select * from customerdetail; 

insert into bookings (booking_id, booking_date, table_number, customer_id) 
VALUES 
    (1, '2022-10-10', 5, 1),
    (2, '2022-11-12', 3, 3),
    (3, '2022-10-11', 2, 2),
    (4, '2022-10-13', 2, 1);
    
select * from bookings;

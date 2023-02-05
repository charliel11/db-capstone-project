DROP PROCEDURE IF EXISTS CheckBooking;
CREATE PROCEDURE CheckBooking(BookingDate DATE,Table_Number INT)
SELECT 
CONCAT("Table ", Table_Number, " is already booked")
WHERE EXISTS 
(SELECT * FROM bookings Where Date = BookingDate AND TableNumber = Table_Number);
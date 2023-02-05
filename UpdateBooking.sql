DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER $$ 
CREATE PROCEDURE UpdateBooking(IN bookingID INT, IN bookingDate DATE) 
BEGIN

UPDATE bookings 
SET Date=bookingDate
WHERE BookingID = bookingID;

SELECT CONCAT("Booking ", bookingID, " updated") AS "Confirmation"; 

END$$ 
DELIMITER ; 
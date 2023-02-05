DROP PROCEDURE IF EXISTS AddBooking; 
DELIMITER $$ 
CREATE PROCEDURE AddBooking(IN bookingID INT, IN customerID INT, IN tableNumber INT, IN bookingDate DATE)
BEGIN 
INSERT INTO bookings (BookingID, Date, TableNumber, CustomerID) VALUES (bookingID, bookingDate, tableNumber, customerID); 
SELECT "New booking added" AS "Confirmation";
END$$ DELIMITER ; 
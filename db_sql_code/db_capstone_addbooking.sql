DELIMITER //

DROP PROCEDURE IF EXISTS AddBooking;

CREATE PROCEDURE AddBooking(
    IN InputBookingID INT,
    IN InputBookingDate DATE,
	IN InputTableNumber INT,
	IN InputCustomerID INT
)
BEGIN
    -- Add a new booking record
    INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID)
    VALUES (InputBookingID, InputBookingDate, InputTableNumber, InputCustomerID);

    SELECT CONCAT('Booking added successfully. Booking ID: ', InputBookingID) AS Result;

END //

DELIMITER ;


CALL AddBooking(9, '2022-12-30', 4, 3);
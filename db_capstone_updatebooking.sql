DELIMITER //

DROP PROCEDURE IF EXISTS UpdateBooking;

CREATE PROCEDURE UpdateBooking(
    IN InputBookingID INT,
    IN InputBookingDate DATE
)
BEGIN
    -- Update existing booking based on BookingID and BookingDate
    UPDATE bookings
    SET BookingDate = InputBookingDate 
    WHERE BookingID = InputBookingID;

    IF ROW_COUNT() > 0 THEN
        SELECT CONCAT('Booking with ID ', InputBookingID, ' updated successfully.') AS Result;
    ELSE
        SELECT CONCAT('No booking found with ID ', InputBookingID, '.') AS Result;
    END IF;

END //

DELIMITER ;


SELECT * FROM bookings;
CALL UpdateBooking(9, '2022-12-18');
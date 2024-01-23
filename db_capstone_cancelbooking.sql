DELIMITER //

DROP PROCEDURE IF EXISTS CancelBooking;

CREATE PROCEDURE CancelBooking(
    IN InputBookingID INT
)
BEGIN
    -- Delete the booking based on BookingID
    DELETE FROM bookings
    WHERE BookingID = InputBookingID;

    IF ROW_COUNT() > 0 THEN
        SELECT CONCAT('Booking with ID ', InputBookingID, ' has been canceled.') AS Result;
    ELSE
        SELECT CONCAT('No booking found with ID ', InputBookingID, '.') AS Result;
    END IF;

END //

DELIMITER ;


CALL CancelBooking(9);
DELIMITER //

DROP PROCEDURE IF EXISTS CheckBooking;

CREATE PROCEDURE CheckBooking(
    IN input_booking_date DATE,
    IN input_table_number INT
)
BEGIN
    DECLARE BookingExists INT;

    -- Check if a booking exists for the given date and table number
    SELECT COUNT(*) INTO BookingExists
    FROM bookings
    WHERE BookingDate = input_booking_date AND TableNumber = input_table_number;

	IF BookingExists > 0 THEN
		SELECT CONCAT('Table ', input_table_number, ' is already booked.') AS BookingStatus;
    ELSE
        -- Order doesn't exist
        SELECT CONCAT('Table ', input_table_number, ' is free.') AS BookingStatus;
    END IF;
END //

DELIMITER ;

CALL CheckBooking("2022-11-12", 3);
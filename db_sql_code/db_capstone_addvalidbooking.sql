DELIMITER //

DROP PROCEDURE IF EXISTS AddValidBooking;

CREATE PROCEDURE AddValidBooking(
	IN InputBookingDate DATE,
    IN InputTableNumber INT,
    IN InputCustomerID INT
)
BEGIN
    DECLARE BookingExists INT;

    -- Start the transaction
    START TRANSACTION;
	
    -- Add a new booking record
    INSERT INTO bookings (BookingDate, TableNumber, CustomerID)
    VALUES (InputBookingDate, InputTableNumber, InputCustomerID);

    -- Check if the table is already booked on the given date
	SELECT COUNT(*) INTO BookingExists
    FROM bookings
    WHERE (BookingDate = InputBookingDate AND TableNumber = InputTableNumber);
	
    -- If the table is already booked, rollback the transaction
    IF BookingExists > 1 THEN
        ROLLBACK;
        SELECT CONCAT('Table ', InputTableNumber, ' is already booked - booking cancelled.') AS BookingStatus;
    ELSE
        -- If the table is available, commit the transaction
        COMMIT;
        SELECT CONCAT('Table ', InputTableNumber, ' is free - booking made.') AS BookingStatus;
    END IF;

END //

DELIMITER ;


CALL AddValidBooking('2022-11-16', 5, 2);
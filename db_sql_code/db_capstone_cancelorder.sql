DELIMITER //

CREATE PROCEDURE CancelOrder(IN InputOrderID INT)
BEGIN
    DECLARE OrderExists INT;

    -- Check if the order exists
    SELECT COUNT(*) INTO OrderExists
    FROM orders
    WHERE OrderID = InputOrderID;

    IF OrderExists > 0 THEN
        -- Order exists, delete it
        DELETE FROM Orders WHERE OrderID = InputOrderID;
        SELECT CONCAT('Order ', InputOrderID, ' cancelled.') AS Confirmation;
    ELSE
        -- Order doesn't exist
        SELECT CONCAT('Order ', InputOrderID, ' doesn\'t exist.') AS Confirmation;
    END IF;
END //

DELIMITER ;

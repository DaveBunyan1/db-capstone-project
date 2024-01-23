DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    DECLARE MaxQuantity INT;

    SELECT MAX(Quantity) INTO MaxQuantity
    FROM Orders;

    SELECT MaxQuantity AS "Max Quantity in Order";
END //

DELIMITER ;
DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    DECLARE MaxQuantity INT;

    SELECT MAX(Quantity) INTO max_quantity
    FROM Orders;

    SELECT MaxQuantity AS "Max Quantity in Order";
END //

DELIMITER ;
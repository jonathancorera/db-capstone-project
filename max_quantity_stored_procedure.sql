
USE littlelemondb
DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(littlelemondb.orders.Quantity)
FROM littlelemondb.orders;
END //
DELIMITER ;
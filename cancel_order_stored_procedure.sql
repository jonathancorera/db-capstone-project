
USE littlelemondb
DELIMITER //

CREATE PROCEDURE CancelOrder(IN OrderID INT)

BEGIN

DELETE FROM littlelemondb.orders WHERE littlelemondb.orders.OrderID = OrderID;

END //

DELIMITER ;
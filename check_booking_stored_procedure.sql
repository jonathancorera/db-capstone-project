USE littlelemondb
DELIMITER //

CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN TableNumber INT)
BEGIN
SELECT Date, TableNumber FROM littlelemondb.booking
WHERE exists (SELECT * from littlelemondb.booking where littlelemondb.booking.Date = BookingDate and TableNumber = TableNumber);

END //


DELIMITER ;
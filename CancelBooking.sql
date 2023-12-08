DELIMITER //

CREATE PROCEDURE CancelBooking(
    IN bookingIDParam INT
)
BEGIN
    DELETE FROM Bookings WHERE BookingID = bookingIDParam;

    SELECT CONCAT('Booking ', bookingIDParam, ' canceled successfully.') AS ResultMessage;
END //

DELIMITER ;

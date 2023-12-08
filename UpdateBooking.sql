
DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN bookingIDParam INT,
    IN newBookingDateParam DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = newBookingDateParam
    WHERE BookingID = bookingIDParam;

    SELECT CONCAT('Booking ', bookingIDParam, ' updated successfully.') AS ResultMessage;
END //

DELIMITER ;

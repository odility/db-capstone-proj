
DELIMITER //

CREATE PROCEDURE AddBooking(
    IN bookingIDParam INT,
    IN customerIDParam INT,
    IN bookingDateParam DATE,
    IN tableNumberParam INT
)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (bookingIDParam, customerIDParam, bookingDateParam, tableNumberParam);
    
    SELECT CONCAT('Booking ', bookingIDParam, ' added successfully.') AS ResultMessage;
END //

DELIMITER ;

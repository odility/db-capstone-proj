
DELIMITER //

CREATE PROCEDURE CancelOrder(IN orderIDParam INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = orderIDParam;
    SELECT CONCAT('Order ', orderIDParam, ' has been canceled.') AS ResultMessage;
END //

DELIMITER ;


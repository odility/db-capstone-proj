SELECT MenuName
FROM Menus
WHERE MenuItemID = ANY (
    SELECT MenuID
    FROM Orders
    GROUP BY MenuID
    HAVING COUNT(OrderID) > 2
);


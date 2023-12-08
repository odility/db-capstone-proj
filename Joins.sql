SELECT
    C.CustomerID,
    CustomerName AS FullName,
    O.OrderID,
    O.Cost,
    M.MenuID,
    MI.Courses,
    MI.Starters
FROM
    Customers C
JOIN
    Orders O ON C.CustomerID = O.CustomerID
JOIN
    Menus M ON O.MenuID = M.MenuID
JOIN
    MenuItems MI ON M.MenuItemID = MI.MenuItemID
WHERE
    O.Cost > 150
ORDER BY
    O.Cost ASC;


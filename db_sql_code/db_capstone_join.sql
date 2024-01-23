SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.TotalCost,
    m.MenuName,
    mi.CourseName,
    mi.StarterName
FROM
    customers c
JOIN
    orders o ON c.CustomerID = o.CustomerID
JOIN
    menu m ON o.MenuID = m.MenuID
JOIN
    menuitems mi ON m.MenuItemsID = mi.MenuItemsID
WHERE
    o.TotalCost > 150
ORDER BY
    o.TotalCost ASC;

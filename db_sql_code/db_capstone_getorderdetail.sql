PREPARE GetOrderDetail FROM "
SELECT 
	OrderID,
    Quantity,
    TotalCost
FROM
	orders
WHERE
	CustomerID = ?"

SELECT 
    Customers.CustomerID,
    Customers.CustomerName,
    COUNT(Orders.OrderID) AS Order_Count,
    MAX(Orders.OrderDate) AS Last_OrderDate
FROM 
    Customers
INNER JOIN 
    Orders 
ON Customers.CustomerID = Orders.CustomerID
GROUP BY 
    Customers.CustomerID, Customers.CustomerName
HAVING 
    COUNT(Orders.OrderID) > 5
ORDER BY COUNT(Orders.OrderID) DESC
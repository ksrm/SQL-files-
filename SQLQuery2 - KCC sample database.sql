Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone,
c.CustomerID
From dbo.Orders o left outer Join dbo.Customers c on o.CustomerID = c.CustomerID
Order by OrderTotal desc;

SELECT Customers.CustomerName, SUM(Orders.OrderTotal) AS [Total Sales]
FROM     Orders RIGHT OUTER JOIN
                  Customers ON Orders.CustomerID = Customers.CustomerID
WHERE  (Orders.OrderDate >= DATEADD(year, - 2, GETDATE()))
GROUP BY Customers.CustomerName;
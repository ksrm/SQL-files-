Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone,
c.CustomerID
From dbo.Orders o left outer Join dbo.Customers c on o.CustomerID = c.CustomerID
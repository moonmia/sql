
Select p.UnitsOnOrder As sold
From Products p
Where p.UnitsOnOrder > 0

Select Top 5 o.ShipPostalCode, SUM(UnitsOnOrder) As MostSold
From Products p, Orders o
Group by o.ShipPostalCode, p.UnitsOnOrder

Select Top 5 o.ShipPostalCode, SUM(UnitsOnOrder) As MostSold
From Products p, Orders o
Where DATEDIFF(YEAR, o.OrderDate, GETDATE()) <25 
Group by o.ShipPostalCode, p.UnitsOnOrder

Select c.City, c.ContactName
From Customers c

Select c.City, c.ContactName
Where COUNT(c.ContactName) >2
From Customers c


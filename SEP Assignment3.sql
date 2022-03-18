Select *
From Customers

Select *
From Employees

Select *
From Products

Select *
From [Order Details]


Select e.City As SameCity
From Employees e Inner Join Customers c
on e.City = c.City

Select c.City As DifferentCity
From Customers c Inner Join Employees e
on c.City <> e.City


Select c.City From Customers c
EXCEPT
Select c.City From Customers c
Inner Join
Employees e on e.City = c.City

Select p.ProductName, COUNT(o.OrderID)[TotalOrderQuantity]
From [Order Details] o Inner Join Products p
on o.ProductID = p.ProductID
Group by p.ProductName

Select c.City, COUNT(o.ShipCity)[Total Product Ordered by the City]
From Orders o Inner Join Customers c
on c.Address = o.ShipAddress
Group by c.City

Select c.City
From Customers c
UNION
Select Count(c.ContactName)
From Customers c
Having Count(c.ContactName) >2
Order by c.City ASC

Select c.City, COUNT(cs.ContactName)
From [Customer and Suppliers by City] cs inner join Customers c
on c.ContactName = cs.ContactName
Having COUNT(cs.ContactName) >2
Order by c.City ASC

Select c.City, COUNT(o.OrderID)
From Customers c inner join Orders o
on c.CustomerID = o.CustomerID
Having COUNT(o.OrderID) >2
Order by c.City

Select top 5 p.ProductName, AVG(od.UnitPrice), c.City, COUNT(od.Quantity)
From Customers c, [Order Details]od, Products p
Order by c.City, p.ProductName

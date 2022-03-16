Select p.ProductID, p.Name, p.Color, p.ListPrice
From Production.Product p

Select p.ProductID, p.Name, p.Color, p.ListPrice
From Production.Product p
Where p.ListPrice <> 0


Select p.ProductID, p.Name, p.Color, p.ListPrice
From Production.Product p
Where p.Color IS NULL

Select p.ProductID, p.Name, p.Color, p.ListPrice
From Production.Product p
Where p.Color IS NOT NULL


Select p.ProductID, p.Name, p.Color, p.ListPrice
From Production.Product p
Where p.Color IS NOT NULL AND p.ListPrice > 0

Select p.Name, p.Color
From Production.Product p
Where p.Color IS NOT NULL

Select p.Name, p.Color
From Production.Product p
Where p.ProductID Between 317 And 322

Select p.ProductID, p.Name
From Production.Product p
Where p.ProductID Between 400 And 500

Select p.ProductID, p.Name, p.Color
From Production.Product p
Where p.Color In ('Black', 'Blue')

Select p.Name
From Production.Product p
Where p.Name Like 'S%'

Select p.Name, p.ListPrice
From Production.Product p
Where p.Name Like 'S%'
Order by p.Name

Select p.Name, p.ListPrice
From Production.Product p
Where p.Name Like 'S%' OR p.Name Like 'A%'
Order by p.Name

Select p.Name
From Production.Product p
Where p.Name Like 'Spo%' AND p.Name NOT LIKE '%Spok%'
Order by p.Name

Select Distinct p.Color
From Production.Product p
Order by p.Color Desc

Select p.ProductSubcategoryID, p.Color
From Production.Product p
Where p.ProductSubcategoryID Is Not NULL And p.Color IS NOT NULL
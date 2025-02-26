USE Nortwind;

-- Ex1
SELECT * FROM Orders;

SELECT Count(*) as TotalOrders FROM Orders;

-- Ex2
SELECT * FROM Customers;

SELECT Count(*) as TotalCustomers FROM Customers;

-- Ex3
SELECT 'London' as City, Count(*) as TotalCustomers FROM Customers WHERE City='London';

-- Ex4
SELECT AVG(Freight) as FreightAverage FROM Orders;

-- Ex5
SELECT 'BOTTM' as CustomerID, AVG(Freight) as FreightAverage FROM Orders WHERE CustomerID='BOTTM';

-- Ex6
SELECT CustomerID, SUM(Freight) as TotalFreight FROM Orders GROUP BY CustomerID;

-- Ex7
SELECT City, COUNT(*) as TotalCustomers FROM Customers GROUP BY City;

-- Ex8
SELECT OrderID, SUM(UnitPrice * Quantity) as Total FROM [Order Details] GROUP BY OrderID;

-- Ex9
--   variante con HAVING
SELECT OrderID, SUM(UnitPrice * Quantity) as Total FROM [Order Details] GROUP BY OrderID HAVING OrderID=10248;

--   variante con WHERE
SELECT OrderID, SUM(UnitPrice * Quantity) as Total FROM [Order Details] WHERE OrderID=10248 GROUP BY OrderID;

-- Ex10
SELECT CategoryID, SUM(Products.UnitsInStock) as TotalUnits FROM Products GROUP BY CategoryID;

-- Ex10 extra
--   JOIN per vedere il nome della categoria al posto dell'Id della categoria
SELECT Categories.CategoryName, SUM(Products.UnitsInStock) as TotalUnits FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID GROUP BY Categories.CategoryName;

-- Ex11
SELECT ShipCountry, COUNT(*) as TotalOrders FROM Orders GROUP BY ShipCountry;

-- Ex12
SELECT ShipCountry, AVG(Freight) as AerageFreight FROM Orders GROUP BY ShipCountry;
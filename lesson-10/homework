-- 1) INNER JOIN Orders and Customers using AND in ON clause, filtering orders placed after 2022
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID 
AND Orders.OrderDate > '2022-12-31';

-- 2) INNER JOIN Employees and Departments using OR in ON clause for 'Sales' or 'Marketing'
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID 
OR Departments.DepartmentName IN ('Sales', 'Marketing');

-- 3) CROSS APPLY between Departments and a derived table for top-performing employees
SELECT Departments.DepartmentName, TopEmployees.EmployeeName, TopEmployees.Salary
FROM Departments
CROSS APPLY (
    SELECT TOP 1 EmployeeName, Salary
    FROM Employees
    WHERE Employees.DepartmentID = Departments.DepartmentID
    ORDER BY Salary DESC
) AS TopEmployees;

-- 4) INNER JOIN Customers and Orders using AND in ON clause to filter US customers with orders in 2023
SELECT Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
AND YEAR(Orders.OrderDate) = 2023 
AND Customers.Country = 'USA';

-- 5) JOIN Customers with a derived table showing the number of orders per customer
SELECT Customers.CustomerName, OrderCounts.TotalOrders
FROM Customers
INNER JOIN (
    SELECT CustomerID, COUNT(*) AS TotalOrders
    FROM Orders
    GROUP BY CustomerID
) AS OrderCounts ON Customers.CustomerID = OrderCounts.CustomerID;

-- 6) INNER JOIN Products and Suppliers using OR in ON clause for specific suppliers
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID 
OR Suppliers.SupplierName IN ('Gadget Supplies', 'Clothing Mart');

-- 7) OUTER APPLY between Customers and a derived table for most recent orders
SELECT Customers.CustomerName, RecentOrders.OrderID, RecentOrders.OrderDate
FROM Customers
OUTER APPLY (
    SELECT TOP 1 OrderID, OrderDate
    FROM Orders
    WHERE Orders.CustomerID = Customers.CustomerID
    ORDER BY OrderDate DESC
) AS RecentOrders;


-- 8) INNER JOIN Orders and Customers using AND in ON clause, filtering orders > 500
SELECT Customers.CustomerName, Orders.OrderID, Orders.TotalAmount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
AND Orders.TotalAmount > 500;

-- 9) INNER JOIN Products and Sales using OR in ON clause for 2022 sales or amount > 400
SELECT Products.ProductName, Sales.SaleAmount, Sales.SaleDate
FROM Products
INNER JOIN Sales ON Products.ProductID = Sales.ProductID 
OR YEAR(Sales.SaleDate) = 2022 
OR Sales.SaleAmount > 400;

-- 10) JOIN Products with a derived table for total sales per product
SELECT Products.ProductName, TotalSales.TotalAmount
FROM Products
INNER JOIN (
    SELECT ProductID, SUM(Amount) AS TotalAmount
    FROM Sales
    GROUP BY ProductID
) AS TotalSales ON Products.ProductID = TotalSales.ProductID;

-- 11) INNER JOIN Employees and Departments using AND in ON clause for 'HR' and salary > 50000
SELECT Employees.EmployeeName, Employees.Salary, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID 
AND Departments.DepartmentName = 'HR' 
AND Employees.Salary > 50000;

-- 12) OUTER APPLY to return all customers with their most recent orders (including customers with no orders)
SELECT Customers.CustomerName, RecentOrders.OrderID, RecentOrders.OrderDate
FROM Customers
OUTER APPLY (
    SELECT TOP 1 OrderID, OrderDate
    FROM Orders
    WHERE Orders.CustomerID = Customers.CustomerID
    ORDER BY OrderDate DESC
) AS RecentOrders;

-- 13) INNER JOIN Products and Sales using AND in ON clause, filtering 2023 sales and stock > 50
SELECT Products.ProductName, Sales.SaleDate, Products.StockQuantity
FROM Products
INNER JOIN Sales ON Products.ProductID = Sales.ProductID 
AND YEAR(Sales.SaleDate) = 2023 
AND Products.StockQuantity > 50;

-- 14) INNER JOIN Employees and Departments using OR in ON clause for 'Sales' or hired after 2020
SELECT Employees.EmployeeName, Employees.HireDate, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID 
OR Employees.HireDate > '2020-12-31';


-- 15) INNER JOIN Orders and Customers using AND in ON clause for USA customers with addresses starting with 4 digits
SELECT Orders.OrderID, Customers.CustomerName, Customers.Address
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID 
AND Customers.Country = 'USA' 
AND Customers.Address LIKE '[0-9][0-9][0-9][0-9]%';

-- 16) INNER JOIN Products and Sales using OR in ON clause for 'Electronics' category or SaleAmount > 350
SELECT Products.ProductName, Sales.SaleAmount, Categories.CategoryName
FROM Products
INNER JOIN Sales ON Products.ProductID = Sales.ProductID 
OR Products.CategoryID IN (SELECT CategoryID FROM Categories WHERE CategoryName = 'Electronics') 
OR Sales.SaleAmount > 350;

-- 17) JOIN Categories with a derived table showing count of products per category
SELECT Categories.CategoryName, ProductCounts.TotalProducts
FROM Categories
INNER JOIN (
    SELECT CategoryID, COUNT(*) AS TotalProducts
    FROM Products
    GROUP BY CategoryID
) AS ProductCounts ON Categories.CategoryID = ProductCounts.CategoryID;

-- 18) INNER JOIN Orders and Customers using AND in ON clause for LA customers with orders > 300
SELECT Orders.OrderID, Customers.CustomerName, Orders.TotalAmount
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID 
AND Customers.City = 'Los Angeles' 
AND Orders.TotalAmount > 300;

-- 19) INNER JOIN Employees and Departments using OR in ON clause for 'HR', 'Finance', or names with 4+ vowels
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID 
OR Departments.DepartmentName IN ('HR', 'Finance') 
OR Employees.EmployeeName LIKE '%[aeiouAEIOU]%[aeiouAEIOU]%[aeiouAEIOU]%[aeiouAEIOU]%';

-- 20) INNER JOIN Sales and Products using AND in ON clause for SalesQty > 100 and Price > 500
SELECT Products.ProductName, Sales.Quantity, Products.Price
FROM Products
INNER JOIN Sales ON Products.ProductID = Sales.ProductID 
AND Sales.Quantity > 100 
AND Products.Price > 500;

-- 21) INNER JOIN Employees and Departments using OR in ON clause for 'Sales', 'Marketing' and Salary > 60000
SELECT Employees.EmployeeName, Employees.Salary, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID 
OR Departments.DepartmentName IN ('Sales', 'Marketing') 
AND Employees.Salary > 60000;

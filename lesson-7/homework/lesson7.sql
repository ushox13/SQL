
Easy
SELECT MIN(price) AS min_price FROM Products;

SELECT MAX(Salary) AS max_salary FROM Employees;

SELECT COUNT(*) AS total_customers FROM Customers;


SELECT COUNT(DISTINCT Category) AS unique_categories FROM Products;


SELECT SUM(SalesAmount) AS total_sales FROM Sales WHERE ProductID = ?;


SELECT AVG(Age) AS avg_age FROM Employees;


SELECT Department, COUNT(*) AS employee_count FROM Employees GROUP BY Department;


SELECT Category, MIN(Price) AS min_price, MAX(Price) AS max_price FROM Products GROUP BY Category;


SELECT Region, SUM(SalesAmount) AS total_sales FROM Sales GROUP BY Region;


SELECT Department FROM Employees GROUP BY Department HAVING COUNT(*) > 5;



Medium
SELECT Category, SUM(SalesAmount) AS total_sales, AVG(SalesAmount) AS avg_sales FROM Sales GROUP BY Category;


SELECT JobTitle, COUNT(*) AS employee_count FROM Employees GROUP BY JobTitle;


SELECT Department, MAX(Salary) AS max_salary, MIN(Salary) AS min_salary FROM Employees GROUP BY Department;


SELECT Department, AVG(Salary) AS avg_salary FROM Employees GROUP BY Department;


SELECT Department, AVG(Salary) AS avg_salary, COUNT(*) AS employee_count FROM Employees GROUP BY Department;


SELECT ProductID, AVG(Price) AS avg_price FROM Products GROUP BY ProductID HAVING AVG(Price) > 100;


SELECT COUNT(DISTINCT ProductID) AS high_selling_products FROM Sales WHERE Quantity > 100;


SELECT YEAR(SaleDate) AS year, SUM(SalesAmount) AS total_sales FROM Sales GROUP BY YEAR(SaleDate);


SELECT Region, COUNT(DISTINCT CustomerID) AS total_customers FROM Sales GROUP BY Region;


SELECT Department FROM Employees GROUP BY Department HAVING SUM(Salary) > 100000;



Hard
SELECT Category, AVG(SalesAmount) AS avg_sales FROM Sales GROUP BY Category HAVING AVG(SalesAmount) > 200;


SELECT EmployeeID, SUM(SalesAmount) AS total_sales FROM Sales GROUP BY EmployeeID HAVING SUM(SalesAmount) > 5000;


SELECT Department, SUM(Salary) AS total_salary, AVG(Salary) AS avg_salary FROM Employees GROUP BY Department HAVING AVG(Salary) > 6000;


SELECT CustomerID, MAX(OrderValue) AS max_order, MIN(OrderValue) AS min_order FROM Orders GROUP BY CustomerID HAVING MIN(OrderValue) >= 50;


SELECT Region, SUM(SalesAmount) AS total_sales, COUNT(DISTINCT ProductID) AS unique_products FROM Sales GROUP BY Region HAVING COUNT(DISTINCT ProductID) > 10;


SELECT ProductCategory, MIN(OrderQuantity) AS min_order, MAX(OrderQuantity) AS max_order FROM Orders GROUP BY ProductCategory;


SELECT Year, Region, SUM(SalesAmount) AS total_sales FROM Sales GROUP BY Year, Region;


SELECT Region, 'Q1' AS Quarter, Q1 AS Sales FROM SalesTable UNION ALL SELECT Region, 'Q2', Q2 FROM SalesTable UNION ALL SELECT Region, 'Q3', Q3 FROM SalesTable UNION ALL SELECT Region, 'Q4', Q4 FROM SalesTable;


SELECT ProductCategory, ProductID, COUNT(*) AS order_count FROM Orders GROUP BY ProductCategory, ProductID HAVING COUNT(*) > 50;


SELECT EmployeeID, SUM(Q1) AS Q1_Sales, SUM(Q2) AS Q2_Sales, SUM(Q3) AS Q3_Sales, SUM(Q4) AS Q4_Sales FROM EmployeeSales GROUP BY EmployeeID;

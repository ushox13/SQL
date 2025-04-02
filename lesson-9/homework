-- 1) INNER JOIN Employees and Departments, filtering salary > 5000
SELECT Employees.EmployeeName, Employees.Salary, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Employees.Salary > 5000;

-- 2) INNER JOIN Customers and Orders, filtering orders placed in 2023
SELECT Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE YEAR(Orders.OrderDate) = 2023;

-- 3) LEFT OUTER JOIN between Employees and Departments (include employees without departments)
SELECT Employees.EmployeeName, COALESCE(Departments.DepartmentName, 'No Department') AS DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- 4) RIGHT OUTER JOIN between Products and Suppliers (include suppliers without products)
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
RIGHT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- 5) FULL OUTER JOIN between Orders and Payments (include orders without payments and payments without orders)
SELECT Orders.OrderID, Payments.PaymentID, Payments.Amount
FROM Orders
FULL OUTER JOIN Payments ON Orders.OrderID = Payments.OrderID;

-- 6) SELF JOIN on Employees table to show employees and their respective managers
SELECT E1.EmployeeName AS Employee, E2.EmployeeName AS Manager
FROM Employees E1
LEFT JOIN Employees E2 ON E1.ManagerID = E2.EmployeeID;

-- 7) INNER JOIN Students and Courses using Enrollments table, filtering 'Math 101'
SELECT Students.StudentName, Courses.CourseName
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID
WHERE Courses.CourseName = 'Math 101';

-- 8) INNER JOIN Customers and Orders, filtering customers with orders containing more than 3 items
SELECT Customers.CustomerName, Orders.OrderID, Orders.Quantity
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Quantity > 3;

-- 9) LEFT OUTER JOIN Employees and Departments, filtering 'HR' department
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'HR';

-- 10) INNER JOIN Employees and Departments, showing departments with more than 10 employees
SELECT Departments.DepartmentName, COUNT(Employees.EmployeeID) AS EmployeeCount
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY Departments.DepartmentName
HAVING COUNT(Employees.EmployeeID) > 10;

-- 11) LEFT OUTER JOIN Products and Sales, showing products with no sales
SELECT Products.ProductName
FROM Products
LEFT JOIN Sales ON Products.ProductID = Sales.ProductID
WHERE Sales.ProductID IS NULL;

-- 12) RIGHT OUTER JOIN Customers and Orders, filtering customers with at least one order
SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS OrderCount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
HAVING COUNT(Orders.OrderID) > 0;

-- 13) FULL OUTER JOIN Employees and Departments, filtering out NULL departments
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName IS NOT NULL;

-- 14) SELF JOIN Employees, showing employees who report to the same manager
SELECT E1.EmployeeName AS Employee1, E2.EmployeeName AS Employee2, E1.ManagerID
FROM Employees E1
INNER JOIN Employees E2 ON E1.ManagerID = E2.ManagerID AND E1.EmployeeID <> E2.EmployeeID;

-- 15) LEFT OUTER JOIN Orders and Customers, filtering orders from 2022
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE YEAR(Orders.OrderDate) = 2022;

-- 16) INNER JOIN Employees and Departments, filtering 'Sales' employees with salary > 5000
SELECT Employees.EmployeeName, Employees.Salary, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'Sales' AND Employees.Salary > 5000;

-- 17) INNER JOIN Employees and Departments, filtering IT department employees
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'IT';

-- 18) FULL OUTER JOIN Orders and Payments, showing only orders with payments
SELECT Orders.OrderID, Payments.PaymentID, Payments.Amount
FROM Orders
FULL OUTER JOIN Payments ON Orders.OrderID = Payments.OrderID
WHERE Payments.PaymentID IS NOT NULL;

-- 19) LEFT OUTER JOIN Products and Orders, showing products with no orders
SELECT Products.ProductName
FROM Products
LEFT JOIN Orders ON Products.ProductID = Orders.ProductID
WHERE Orders.ProductID IS NULL;


-- 20) INNER JOIN Employees and Departments, filtering employees with salary higher than average salary
SELECT Employees.EmployeeName, Employees.Salary
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Employees.Salary > (SELECT AVG(Salary) FROM Employees);

-- 21) LEFT OUTER JOIN Orders and Payments, filtering unpaid orders before 2020
SELECT Orders.OrderID, Orders.OrderDate
FROM Orders
LEFT JOIN Payments ON Orders.OrderID = Payments.OrderID
WHERE Orders.OrderDate < '2020-01-01' AND Payments.PaymentID IS NULL;

-- 22) FULL OUTER JOIN Products and Categories, showing products without categories
SELECT Products.ProductName
FROM Products
FULL OUTER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryID IS NULL;

-- 23) SELF JOIN Employees, finding employees who report to the same manager and earn more than 5000
SELECT E1.EmployeeName AS Employee1, E2.EmployeeName AS Employee2, E1.ManagerID
FROM Employees E1
INNER JOIN Employees E2 ON E1.ManagerID = E2.ManagerID AND E1.EmployeeID <> E2.EmployeeID
WHERE E1.Salary > 5000 AND E2.Salary > 5000;

-- 24) RIGHT OUTER JOIN Employees and Departments, filtering departments starting with 'M'
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName LIKE 'M%';

-- 25) INNER JOIN Products and Sales, filtering sales greater than 1000
SELECT Products.ProductName, Sales.Quantity
FROM Products
INNER JOIN Sales ON Products.ProductID = Sales.ProductID
WHERE Sales.Quantity > 1000;

-- 26) LEFT OUTER JOIN Students and Courses using Enrollments, filtering students not enrolled in 'Math 101'
SELECT Students.StudentName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID
WHERE Courses.CourseName IS NULL OR Courses.CourseName <> 'Math 101';

-- 27) FULL OUTER JOIN Orders and Payments, filtering out orders without payments
SELECT Orders.OrderID, Payments.PaymentID, Payments.Amount
FROM Orders
FULL OUTER JOIN Payments ON Orders.OrderID = Payments.OrderID
WHERE Payments.PaymentID IS NOT NULL;

-- 28) INNER JOIN Products and Categories, filtering products in 'Electronics' or 'Furniture'
SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName IN ('Electronics', 'Furniture');

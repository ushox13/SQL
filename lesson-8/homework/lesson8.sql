-- 1) INNER JOIN Customers and Orders to get CustomerName and OrderDate
SELECT Customers.CustomerName, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 2) One-to-One relationship between EmployeeDetails and Employees
SELECT Employees.EmployeeID, Employees.EmployeeName, EmployeeDetails.Address, EmployeeDetails.Phone
FROM Employees
INNER JOIN EmployeeDetails ON Employees.EmployeeID = EmployeeDetails.EmployeeID;

-- 3) INNER JOIN Products and Categories to get ProductName and CategoryName
SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- 4) LEFT JOIN Customers and Orders to show all Customers and corresponding OrderDate
SELECT Customers.CustomerName, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 5) Many-to-Many relationship between Orders and Products using OrderDetails
SELECT Orders.OrderID, Products.ProductName, OrderDetails.Quantity
FROM Orders
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID;

-- 6) CROSS JOIN between Products and Categories
SELECT Products.ProductName, Categories.CategoryName
FROM Products
CROSS JOIN Categories;

-- 7) One-to-Many relationship between Customers and Orders using INNER JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 8) Filtering a CROSS JOIN result using WHERE clause where OrderAmount > 500
SELECT Products.ProductName, Orders.OrderID, Orders.OrderAmount
FROM Products
CROSS JOIN Orders
WHERE Orders.OrderAmount > 500;

-- 9) INNER JOIN Employees and Departments to show employee names and department names
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- 10) Using the ON clause with <> operator to join tables and return non-equal values
SELECT A.Column1, B.Column2
FROM TableA A
INNER JOIN TableB B ON A.Column1 <> B.Column2;



-- 1) One-to-Many relationship: Customers and Orders, showing CustomerName and total number of orders
SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS TotalOrders
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName;

-- 2) Many-to-Many relationship: Students and Courses via StudentCourses table
SELECT Students.StudentName, Courses.CourseName
FROM Students
INNER JOIN StudentCourses ON Students.StudentID = StudentCourses.StudentID
INNER JOIN Courses ON StudentCourses.CourseID = Courses.CourseID;

-- 3) CROSS JOIN between Employees and Departments, filtered by Salary > 5000
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments
WHERE Employees.Salary > 5000;

-- 4) One-to-One relationship: Employees and EmployeeDetails, showing employee name and details
SELECT Employees.EmployeeName, EmployeeDetails.Address, EmployeeDetails.Phone
FROM Employees
INNER JOIN EmployeeDetails ON Employees.EmployeeID = EmployeeDetails.EmployeeID;

-- 5) INNER JOIN between Products and Suppliers, filtering by 'Supplier A'
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.SupplierName = 'Supplier A';

-- 6) LEFT JOIN between Products and Sales, showing all products and sales quantity (including products with no sales)
SELECT Products.ProductName, COALESCE(Sales.Quantity, 0) AS SalesQuantity
FROM Products
LEFT JOIN Sales ON Products.ProductID = Sales.ProductID;

-- 7) INNER JOIN Employees and Departments, filtering employees with Salary > 4000 in 'HR' department
SELECT Employees.EmployeeName, Employees.Salary, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Employees.Salary > 4000 AND Departments.DepartmentName = 'HR';

-- 8) Using >= operator in ON clause to join two tables and return rows where values meet the condition
SELECT A.Column1, B.Column2
FROM TableA A
INNER JOIN TableB B ON A.Column1 >= B.Column2;

-- 9) INNER JOIN between Products and Suppliers, filtering products with price >= 50
SELECT Products.ProductName, Products.Price, Suppliers.SupplierName
FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Products.Price >= 50;

-- 10) CROSS JOIN between Sales and Regions, filtering regions with sales > 1000
SELECT Sales.SaleID, Regions.RegionName, Sales.SaleAmount
FROM Sales
CROSS JOIN Regions
WHERE Sales.SaleAmount > 1000;



-- 1) Many-to-Many relationship: Authors and Books via AuthorBooks table
SELECT Authors.AuthorName, Books.BookTitle
FROM Authors
INNER JOIN AuthorBooks ON Authors.AuthorID = AuthorBooks.AuthorID
INNER JOIN Books ON AuthorBooks.BookID = Books.BookID;

-- 2) INNER JOIN Products and Categories, filtering out 'Electronics'
SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName <> 'Electronics';

-- 3) CROSS JOIN between Orders and Products, filtering orders with quantity > 100
SELECT Orders.OrderID, Products.ProductName, Orders.Quantity
FROM Orders
CROSS JOIN Products
WHERE Orders.Quantity > 100;

-- 4) INNER JOIN Employees and Departments, filtering employees with over 5 years at the company
SELECT Employees.EmployeeName, Employees.JoinDate, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
AND Employees.JoinDate <= DATE_SUB(CURDATE(), INTERVAL 5 YEAR);

-- 5) Difference between INNER JOIN and LEFT JOIN for Employees and Departments
-- INNER JOIN: Only employees with departments
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- LEFT JOIN: Includes employees without departments
SELECT Employees.EmployeeName, COALESCE(Departments.DepartmentName, 'No Department') AS DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- 6) CROSS JOIN between Products and Suppliers, filtering suppliers of 'Category A' products
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
CROSS JOIN Suppliers
WHERE Products.CategoryID IN (SELECT CategoryID FROM Categories WHERE CategoryName = 'Category A');

-- 7) One-to-Many relationship: Customers and Orders, filtering customers with at least 10 orders
SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS TotalOrders
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
HAVING COUNT(Orders.OrderID) >= 10;

-- 8) Many-to-Many relationship: Courses and Students, counting enrolled students
SELECT Courses.CourseName, COUNT(StudentCourses.StudentID) AS EnrolledStudents
FROM Courses
LEFT JOIN StudentCourses ON Courses.CourseID = StudentCourses.CourseID
GROUP BY Courses.CourseName;

-- 9) LEFT JOIN between Employees and Departments, filtering only "Marketing" employees
SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'Marketing';

-- 10) Using the <= operator in ON clause to join two tables where values meet the condition
SELECT A.Column1, B.Column2
FROM TableA A
INNER JOIN TableB B ON A.Column1 <= B.Column2;

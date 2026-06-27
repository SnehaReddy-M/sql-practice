-- ============================================
-- Online Store Database
-- SQL Queries
-- ============================================

-- 1. Display all customers
SELECT * FROM Customers;

-- 2. Display all products
SELECT * FROM Products;

-- 3. Display all orders
SELECT * FROM Orders;

-- 4. Display all order details
SELECT * FROM OrderDetails;

-- 5. Display customer names and cities
SELECT CustomerName, City
FROM Customers;

-- 6. Display products with price greater than 5000
SELECT *
FROM Products
WHERE Price > 5000;

-- 7. Display products sorted by price (High to Low)
SELECT *
FROM Products
ORDER BY Price DESC;

-- 8. Display top 3 most expensive products
SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 3;

-- 9. Display unique product categories
SELECT DISTINCT Category
FROM Products;

-- 10. Count total customers
SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- 11. Count total products
SELECT COUNT(*) AS TotalProducts
FROM Products;

-- 12. Display average product price
SELECT AVG(Price) AS AveragePrice
FROM Products;

-- 13. Display highest product price
SELECT MAX(Price) AS HighestPrice
FROM Products;

-- 14. Display lowest product price
SELECT MIN(Price) AS LowestPrice
FROM Products;

-- 15. Display total stock available
SELECT SUM(Stock) AS TotalStock
FROM Products;

-- 16. Display customers with their orders
SELECT c.CustomerName,
       o.OrderID,
       o.OrderDate
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- 17. Display all customers including those without orders
SELECT c.CustomerName,
       o.OrderID
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

-- 18. Display products ordered by customers
SELECT c.CustomerName,
       p.ProductName,
       od.Quantity
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON od.ProductID = p.ProductID;

-- 19. Display total quantity sold for each product
SELECT p.ProductName,
       SUM(od.Quantity) AS TotalSold
FROM Products p
JOIN OrderDetails od
ON p.ProductID = od.ProductID
GROUP BY p.ProductName;

-- 20. Display total amount for each order
SELECT od.OrderID,
       SUM(p.Price * od.Quantity) AS OrderAmount
FROM OrderDetails od
JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY od.OrderID;

-- 21. Display total spending by each customer
SELECT c.CustomerName,
       SUM(p.Price * od.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY c.CustomerName;

-- 22. Display best-selling products
SELECT p.ProductName,
       SUM(od.Quantity) AS TotalSold
FROM Products p
JOIN OrderDetails od
ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC;

-- 23. Display customers without any orders
SELECT c.CustomerName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

-- 24. Display products that were never sold
SELECT p.ProductName
FROM Products p
LEFT JOIN OrderDetails od
ON p.ProductID = od.ProductID
WHERE od.ProductID IS NULL;

-- 25. Count number of orders placed by each customer
SELECT c.CustomerName,
       COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

-- 26. Display products with stock less than 50
SELECT *
FROM Products
WHERE Stock < 50;

-- 27. Display total revenue
SELECT SUM(p.Price * od.Quantity) AS TotalRevenue
FROM Products p
JOIN OrderDetails od
ON p.ProductID = od.ProductID;

-- 28. Display orders placed in January
SELECT *
FROM Orders
WHERE MONTH(OrderDate) = 1;

-- 29. Display orders placed after February
SELECT *
FROM Orders
WHERE OrderDate > '2026-02-28';

-- 30. Display customer spending greater than 50000
SELECT c.CustomerName,
       SUM(p.Price * od.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
ON o.OrderID = od.OrderID
JOIN Products p
ON od.ProductID = p.ProductID
GROUP BY c.CustomerName
HAVING SUM(p.Price * od.Quantity) > 50000;

-- ============================================
-- Online Store Database
-- Sample Data
-- ============================================

-- Customers

INSERT INTO Customers
(CustomerID, CustomerName, Email, Phone, City)
VALUES
(1,'Anu','anu@gmail.com','9876543210','Hyderabad'),
(2,'Ravi','ravi@gmail.com','9876543211','Chennai'),
(3,'Sneha','sneha@gmail.com','9876543212','Bangalore'),
(4,'Kiran','kiran@gmail.com','9876543213','Mumbai'),
(5,'Rahul','rahul@gmail.com','9876543214','Delhi');



-- Products

INSERT INTO Products
(ProductID, ProductName, Category, Price, Stock)
VALUES
(101,'Laptop','Electronics',55000,20),
(102,'Mouse','Electronics',700,100),
(103,'Keyboard','Electronics',1200,80),
(104,'Monitor','Electronics',12000,30),
(105,'Headphones','Electronics',2500,60),
(106,'Smartphone','Electronics',30000,25),
(107,'USB Cable','Accessories',350,200),
(108,'Webcam','Accessories',2800,40);



-- Orders

INSERT INTO Orders
(OrderID, CustomerID, OrderDate)
VALUES
(1001,1,'2026-01-05'),
(1002,2,'2026-01-10'),
(1003,1,'2026-02-15'),
(1004,3,'2026-03-20'),
(1005,5,'2026-04-12'),
(1006,2,'2026-05-18'),
(1007,4,'2026-05-25');



-- Order Details

INSERT INTO OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity)
VALUES
(1,1001,101,1),
(2,1001,102,2),
(3,1002,103,1),
(4,1002,104,1),
(5,1003,105,2),
(6,1004,102,3),
(7,1005,101,1),
(8,1005,105,1),
(9,1006,106,1),
(10,1006,107,4),
(11,1007,108,2),
(12,1007,102,1);

-- =====================================================
-- Employee Database Project
-- Author: Sneha Reddy
-- Description: Beginner SQL project for practicing
-- database creation, table creation, data insertion,
-- filtering, sorting, and aggregate functions.
-- =====================================================

-- Create Database
CREATE DATABASE EmployeeDB;

-- Use Database
USE EmployeeDB;

-- Create Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Experience INT
);

-- Insert Employee Records
INSERT INTO Employees VALUES
(101, 'Rahul', 'IT', 55000, 2),
(102, 'Priya', 'HR', 45000, 3),
(103, 'Arjun', 'Finance', 60000, 4),
(104, 'Sneha', 'IT', 70000, 5),
(105, 'Kiran', 'Marketing', 50000, 2),
(106, 'Anjali', 'HR', 48000, 1),
(107, 'Vikram', 'Finance', 65000, 6),
(108, 'Neha', 'IT', 72000, 4);

-- Display All Employees
SELECT * FROM Employees;

-- Display Employee Names and Departments
SELECT Name, Department
FROM Employees;

-- Employees Working in IT Department
SELECT * FROM Employees
WHERE Department = 'IT';

-- Employees with Salary Greater Than 60000
SELECT * FROM Employees
WHERE Salary > 60000;

-- Employees with Experience Greater Than or Equal to 3 Years
SELECT * FROM Employees
WHERE Experience >= 3;

-- Employees in IT Department with Salary Above 60000
SELECT * FROM Employees
WHERE Department = 'IT' AND Salary > 60000;

-- Employees in HR or Finance Department
SELECT * FROM Employees
WHERE Department = 'HR' OR Department = 'Finance';

-- Sort Employees by Salary (Highest to Lowest)
SELECT * FROM Employees
ORDER BY Salary DESC;

-- Sort Employees by Experience
SELECT * FROM Employees
ORDER BY Experience DESC;

-- Count Total Employees
SELECT COUNT(*) AS Total_Employees
FROM Employees;

-- Calculate Average Salary
SELECT AVG(Salary) AS Average_Salary
FROM Employees;

-- Find Highest Salary
SELECT MAX(Salary) AS Highest_Salary
FROM Employees;

-- Find Lowest Salary
SELECT MIN(Salary) AS Lowest_Salary
FROM Employees;

-- Calculate Total Salary Expense
SELECT SUM(Salary) AS Total_Salary_Expense
FROM Employees;

-- Create Database
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Create Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Marks INT
);

-- Insert Sample Data
INSERT INTO Students VALUES
(1, 'Ravi', 20, 'CSE', 85),
(2, 'Priya', 21, 'ECE', 92),
(3, 'Arjun', 19, 'CSE', 78),
(4, 'Sneha', 20, 'ECE', 92),
(5, 'Kiran', 22, 'MECH', 88);

-- Display All Students
SELECT * FROM Students;

-- Students with Marks Greater Than 80
SELECT * FROM Students
WHERE Marks > 80;

-- Students from ECE Department
SELECT * FROM Students
WHERE Department = 'ECE';

-- Sort Students by Marks
SELECT * FROM Students
ORDER BY Marks DESC;

-- Count Total Students
SELECT COUNT(*) AS Total_Students
FROM Students;

-- Average Marks
SELECT AVG(Marks) AS Average_Marks
FROM Students;

-- Highest Marks
SELECT MAX(Marks) AS Highest_Marks
FROM Students;

-- Lowest Marks
SELECT MIN(Marks) AS Lowest_Marks
FROM Students;

-- Total Marks
SELECT SUM(Marks) AS Total_Marks
FROM Students;

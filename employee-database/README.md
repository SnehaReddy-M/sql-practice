# Employee Database Project

## Overview

This project is a beginner-level SQL project developed using MySQL. It simulates an employee database system and demonstrates fundamental SQL concepts such as database creation, table creation, data insertion, data retrieval, filtering, sorting, and aggregate functions.

---

## Features

- Create and manage an employee database
- Store employee information
- Retrieve employee records
- Filter data using conditions
- Sort records based on salary and experience
- Perform data analysis using aggregate functions

---

## Technologies Used

- SQL
- MySQL

---

## Database Structure

### Employees Table

| Column Name | Data Type |
|------------|-----------|
| EmpID | INT (Primary Key) |
| Name | VARCHAR(50) |
| Department | VARCHAR(50) |
| Salary | INT |
| Experience | INT |

---

## SQL Concepts Covered

### Database Operations
- CREATE DATABASE
- USE DATABASE

### Table Operations
- CREATE TABLE

### Data Manipulation
- INSERT INTO

### Data Retrieval
- SELECT
- WHERE
- ORDER BY

### Filtering Data
- AND
- OR

### Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

---

## Sample Queries

### View All Employees

```sql
SELECT * FROM Employees;
```

### Employees with Salary Greater Than 60000

```sql
SELECT * FROM Employees
WHERE Salary > 60000;
```

### Average Salary

```sql
SELECT AVG(Salary)
FROM Employees;
```

### Highest Salary

```sql
SELECT MAX(Salary)
FROM Employees;
```

### Total Employees

```sql
SELECT COUNT(*)
FROM Employees;
```

---

## Learning Outcomes

Through this project, I learned:

- How to design and create a database
- How to create tables and define data types
- How to insert records into a table
- How to retrieve and filter data
- How to sort query results
- How to use aggregate functions for data analysis

---

## Future Improvements

- Add Department table
- Implement Foreign Key relationships
- Use GROUP BY and HAVING clauses
- Perform JOIN operations
- Build a complete Employee Management System

---

## Author

Sneha Reddy

B.Tech (ECE) Graduate

 SQL, Python, Data Analytics, and Cloud Computing.

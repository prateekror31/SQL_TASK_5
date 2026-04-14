# 💼 SQL_Task - 5

![SQL](https://img.shields.io/badge/SQL-Advanced-blue)
![Level](https://img.shields.io/badge/Level-Advanced-green)
![Database](https://img.shields.io/badge/Database-MySQL-orange)
![Domain](https://img.shields.io/badge/Domain-HR%20%26%20Project%20Analytics-purple)
![Status](https://img.shields.io/badge/Status-Completed-success)

---

## 📌 Project Overview

This repository contains an **advanced SQL project** based on **Employee, Project, and Client Analytics**.

The project simulates a real-world corporate environment where employees are assigned to projects handled by different clients. It focuses on solving business-driven problems using **advanced SQL queries, subqueries, joins, and analytical logic**.

---

## 🗂️ Database Structure

The project consists of three relational tables:

### 🔹 1. Employee Table (`emp_details`)
- `E_ID` (Primary Key)
- `EName`, `Gender`, `Age`
- `Working_City`, `Email`
- `EProfile`, `Experience`
- `Join_Date`
- `CP_ID` (Project ID)
- `Mode_of_Join` (Direct / Referral)
- `Salary`
- `Job_Type` (WFH / WFO / Hybrid)

### 🔹 2. Project Table (`project_details`)
- `P_ID` (Primary Key)
- `PStart_Date`, `PEnd_Date`
- `Client_ID` (Foreign Key)
- `Team_Size`

### 🔹 3. Client Table (`client_details`)
- `C_ID` (Primary Key)
- `Location`
- `Total_Budget`
- `Project_Head`

---

## 🚀 Concepts Covered

### ✅ Advanced Joins
- Multi-table joins (Employee + Project + Client)
- Real-world relational mapping  

### ✅ Subqueries
- Nested subqueries  
- Subqueries in `WHERE` and `HAVING`  
- Filtering based on aggregated values  

### ✅ Conditional Logic
- `CASE WHEN` for bonus calculation  
- Business rule implementation  

### ✅ Aggregations
- `AVG()`, `COUNT()`  
- `GROUP BY` with `HAVING`  

### ✅ Date Calculations
- `DATEDIFF()` for experience calculation  
- Project duration analysis  

### ✅ Sorting & Ranking
- Salary-based filtering (Top salaries using LIMIT)  
- Ordered outputs based on multiple conditions  

### ✅ Business Logic Implementation
- Employee bonus calculation  
- Onsite opportunity eligibility  
- Salary comparison with averages  

---

## 📊 Key SQL Analysis Performed

- Employees with high experience and direct hiring filtered with project & client details  
- Current project experience calculation using join date  
- Employees earning above average salary  
- Bonus calculation based on salary & experience conditions  
- Project-wise employee count (for projects ≤ 5 years duration)  
- Identification of top earning employees (3rd & 4th highest salary)  
- City-based matching between employee location and client location  
- Multi-dimensional salary analysis (job type, gender, mode of joining)  
- Onsite opportunity eligibility with incentive calculation based on client budget  

---

## 📁 Files in Repository

| File Name | Description |
|----------|------------|
| `Ex5_Ques.sql` | Contains schema, dataset, and problem statements |
| `Ex5_Solutions.sql` | Contains all SQL queries and solutions |

---

## 🛠️ Tools Used

- MySQL
- SQL (Advanced Queries, Subqueries, Joins)
- DBMS Concepts

---

## 🎯 Learning Outcomes

- Understanding of **real-world HR and project-based data modeling**
- Ability to implement **complex business logic in SQL**
- Strong command over **joins, subqueries, and aggregations**
- Experience in solving **analytics-driven SQL problems**
- Improved skills in writing **optimized and structured queries**

---

## ▶️ How to Run

1. Open MySQL Workbench (or any SQL editor)
2. Run `Ex5_Ques.sql` to create tables and insert data
3. Run `Ex5_Solutions.sql` to execute queries
4. Analyze results

---

## 🤝 Contributing

Feel free to fork this repository and extend it with more real-world SQL scenarios.

---

## 📧 Contact

**Prateek Kumar**  
https://www.linkedin.com/in/prateek3110/

---

⭐ If you found this project helpful, consider giving it a star!

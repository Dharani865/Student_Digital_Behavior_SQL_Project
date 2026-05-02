📊 Student Digital Behavior & Academic Performance Analysis

📌 Project Overview

This project explores how students' digital habits—such as study time, social media usage, and online learning—affect their academic performance. Using SQL, a relational database was designed to organize the data and perform detailed analysis.
The main aim is to uncover patterns in student behavior, identify performance trends, and detect students who may be at risk academically. This project highlights practical SQL skills along with a strong approach to data-driven analysis.

🛠️ Technologies Used

SQL (MySQL)

MySQL Workbench

Relational Database Design

Analytical Querying

📊 Dataset Information

The dataset used in this project is synthetically created to resemble real-world student data. It includes information about academic performance, attendance, assignments, and digital usage patterns.

🗂️ Database Structure

The database is designed with multiple related tables to ensure proper data organization and integrity:

Students – Basic student details

Attendance – Subject-wise attendance records

Marks – Internal and external exam scores

Assignments – Assignment submission details

Digital_Usage – Study hours, social media usage, and online learning activity

All tables are connected using foreign keys to maintain consistency and avoid redundancy.

🔹 ER Diagram

![ER Diagram](Assets/er_diagram.png)

📈 Key Analyses Performed

🔹 Average Performance Per Student

Calculated overall student performance using aggregation and grouping techniques.


🔹 Social Media Usage vs Academic Performance

Analyzed how social media usage impacts student performance by categorizing users and comparing results.


🔹 At-Risk Student Identification

Identified students who may need attention based on:

Low attendance

Low academic scores

🔹 Department-Wise Ranking

Used window functions like RANK() and ROW_NUMBER() to rank students within each department.

🔹 Performance Categorization

Grouped students into performance levels such as:

Excellent

Good

Average

Needs Improvement

🔹 KPI Summary Metrics

Generated key metrics like:

Total number of students

Overall average marks

🧠 SQL Concepts Covered

This project demonstrates a wide range of SQL concepts, including:

Basic queries (SELECT, WHERE)

GROUP BY and HAVING

Joins (especially INNER JOIN)

CASE statements

Aggregate functions

Subqueries

CTEs (WITH clause)

Window functions (RANK, ROW_NUMBER)

Views and indexing

🎯 Key Insights

Higher social media usage tends to negatively impact academic performance

Students with lower attendance are more likely to score poorly

Regular assignment submission plays an important role in overall performance

Performance varies across different departments

# 📊 Student Digital Behavior & Academic Performance Analysis

## 📌 Project Overview
This project analyzes the relationship between students' digital behavior (study hours, social media usage, and online learning engagement) and their academic performance using SQL.

The objective is to design a relational database system and perform analytical queries to extract meaningful insights that help identify performance trends and at-risk students.  
This project demonstrates strong SQL fundamentals and data-driven analytical skills.

---

## 🛠️ Technologies Used
- SQL (MySQL)
- MySQL Workbench
- Relational Database Design
- Analytical Querying

---

## 📊 Dataset Information
The dataset used in this project is synthetically generated to simulate real-world student behavior and academic performance patterns.

---

## 🗂️ Database Structure
The project consists of the following tables:

- **Students** – Student demographic details  
- **Attendance** – Attendance percentage per subject  
- **Marks** – Internal and external marks  
- **Assignments** – Submission behavior  
- **Digital_Usage** – Study hours, social media usage, online learning time  

Relationships are maintained using foreign keys to ensure data integrity.

### 🔹 ER Diagram
![ER Diagram](Assets/er_diagram.png)

---

## 📈 Key Analyses Performed

### 🔹 Average Performance Per Student
- Calculated using aggregation and grouping to evaluate overall academic strength  
![Average Score](Assets/avg_score_result.png)

---

### 🔹 Social Media Usage vs Academic Performance
- Used CASE statements and grouping to categorize high vs low usage students and measure impact  
![Social Media vs Performance](Assets/Social_Media_Usage_vs_Performance.png)

---

### 🔹 At-Risk Student Identification
- Identified students with:
  - Low attendance  
  - Low academic scores  

---

### 🔹 Department-Wise Ranking
- Used window functions (`RANK`, `ROW_NUMBER`) to rank students within each department  

---

### 🔹 Performance Categorization
- Classified students into:
  - Excellent  
  - Good  
  - Average  
  - Needs Improvement  

---

### 🔹 KPI Summary Metrics
- Total number of students  
- Overall average marks  

---

## 🧠 SQL Concepts Covered
- SELECT, WHERE  
- GROUP BY, HAVING  
- INNER JOIN  
- CASE statements  
- Aggregate functions  
- Subqueries  
- CTE (WITH clause)  
- Window functions (RANK, ROW_NUMBER)  
- Views  
- Indexing  

---

## 🎯 Business Insights
- Higher social media usage shows a negative correlation with academic performance  
- Students with low attendance are more likely to underperform  
- Assignment submission behavior significantly impacts overall marks  
- Department-level analysis reveals performance variations across disciplines  

---

## 🚀 Project Highlights
✔ Designed a normalized relational database  
✔ Implemented complex multi-table joins  
✔ Applied advanced SQL analytical techniques  
✔ Generated actionable insights from structured data  
✔ Built BI-ready views for future dashboard integration  

---

## 📂 How to Run This Project
1. Open MySQL Workbench  
2. Execute `database_schema.sql`  
3. Execute `sample_data.sql`  
4. Execute `analysis_queries.sql`  
5. Run queries to generate insights  

---

## 👩‍💻 Author
**Dharanisri Subramaniam**  
Aspiring Data Analyst  
Focused on SQL, Data Analysis & Business Insights

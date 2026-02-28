-- =========================================
-- Student Digital Behavior SQL Project
-- Database Schema File
-- =========================================

-- 1️⃣ Create Database
CREATE DATABASE IF NOT EXISTS student_analytics;

-- 2️⃣ Use Database
USE student_analytics;

-- =========================================
-- 3️⃣ Create Tables
-- =========================================

-- Students Table
CREATE TABLE IF NOT EXISTS Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    year INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);

-- Attendance Table
CREATE TABLE IF NOT EXISTS Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(50),
    attendance_percentage DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Marks Table
CREATE TABLE IF NOT EXISTS Marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(50),
    internal_mark INT,
    external_mark INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Assignments Table
CREATE TABLE IF NOT EXISTS Assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(50),
    submission_status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Digital Usage Table
CREATE TABLE IF NOT EXISTS Digital_Usage (
    student_id INT PRIMARY KEY,
    study_hours_per_day DECIMAL(3,1),
    social_media_hours DECIMAL(3,1),
    online_course_hours DECIMAL(3,1),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- =========================================
-- 4️⃣ Create Index (Performance Optimization)
-- =========================================

CREATE INDEX idx_department 
ON Students(department);

-- =========================================
-- 5️⃣ Create View (Dashboard Ready)
-- =========================================

CREATE VIEW student_dashboard AS
SELECT 
    s.student_id,
    s.name,
    s.department,
    a.attendance_percentage,
    (m.internal_mark + m.external_mark) AS total_marks,
    d.social_media_hours
FROM Students s
JOIN Attendance a ON s.student_id = a.student_id
JOIN Marks m ON s.student_id = m.student_id
JOIN Digital_Usage d ON s.student_id = d.student_id;
-- =========================================
-- Analytical Queries
-- Student Digital Behavior SQL Project
-- =========================================

USE student_analytics;

-- 1️⃣ Average Score Per Student
SELECT s.student_id,
       s.name,
       AVG(m.internal_mark + m.external_mark) AS avg_score
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.name
ORDER BY avg_score DESC;

-- 2️⃣ Social Media Usage vs Performance
SELECT 
    CASE 
        WHEN d.social_media_hours > 3 THEN 'High Usage'
        ELSE 'Low Usage'
    END AS usage_category,
    AVG(m.internal_mark + m.external_mark) AS average_marks
FROM Digital_Usage d
JOIN Marks m ON d.student_id = m.student_id
GROUP BY usage_category;

-- 3️⃣ At-Risk Students (Low Attendance + Low Marks)
SELECT s.name,
       a.attendance_percentage,
       (m.internal_mark + m.external_mark) AS total_marks
FROM Students s
JOIN Attendance a ON s.student_id = a.student_id
JOIN Marks m ON s.student_id = m.student_id
WHERE a.attendance_percentage < 70
AND (m.internal_mark + m.external_mark) < 80;

-- 4️⃣ Department-Wise Ranking (Window Function)
SELECT s.student_id,
       s.department,
       (m.internal_mark + m.external_mark) AS total_marks,
       RANK() OVER (PARTITION BY s.department 
                    ORDER BY (m.internal_mark + m.external_mark) DESC) AS dept_rank
FROM Students s
JOIN Marks m ON s.student_id = m.student_id;

-- 5️⃣ Performance Categorization
SELECT s.name,
       AVG(m.internal_mark + m.external_mark) AS avg_score,
       CASE
           WHEN AVG(m.internal_mark + m.external_mark) >= 85 THEN 'Excellent'
           WHEN AVG(m.internal_mark + m.external_mark) >= 70 THEN 'Good'
           WHEN AVG(m.internal_mark + m.external_mark) >= 50 THEN 'Average'
           ELSE 'Needs Improvement'
       END AS performance_category
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.name;

-- 6️⃣ KPI Summary
SELECT 
    COUNT(DISTINCT student_id) AS total_students,
    ROUND(AVG(internal_mark + external_mark),2) AS overall_avg_marks
FROM Marks;
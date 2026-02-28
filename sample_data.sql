-- =========================================
-- Sample Data File
-- Student Digital Behavior SQL Project
-- =========================================

USE student_analytics;

-- -----------------------
-- Insert Students
-- -----------------------
INSERT INTO Students VALUES
(1,'Arun','CSE',3,'Male','Chennai'),
(2,'Divya','ECE',2,'Female','Coimbatore'),
(3,'Rahul','CSE',4,'Male','Madurai'),
(4,'Sneha','IT',3,'Female','Trichy'),
(5,'Karthik','ECE',1,'Male','Salem');

-- -----------------------
-- Insert Attendance
-- -----------------------
INSERT INTO Attendance (student_id, subject, attendance_percentage) VALUES
(1,'DBMS',85),
(2,'Networks',72),
(3,'DBMS',90),
(4,'AI',65),
(5,'Networks',78);

-- -----------------------
-- Insert Marks
-- -----------------------
INSERT INTO Marks (student_id, subject, internal_mark, external_mark) VALUES
(1,'DBMS',40,45),
(2,'Networks',35,40),
(3,'DBMS',45,48),
(4,'AI',30,35),
(5,'Networks',38,42);

-- -----------------------
-- Insert Assignments
-- -----------------------
INSERT INTO Assignments (student_id, subject, submission_status) VALUES
(1,'DBMS','Submitted'),
(2,'Networks','Late'),
(3,'DBMS','Submitted'),
(4,'AI','Not Submitted'),
(5,'Networks','Submitted');

-- -----------------------
-- Insert Digital Usage
-- -----------------------
INSERT INTO Digital_Usage VALUES
(1,4.5,2.0,1.5),
(2,3.0,4.0,1.0),
(3,5.0,1.5,2.0),
(4,2.5,5.0,0.5),
(5,3.5,2.5,1.0);
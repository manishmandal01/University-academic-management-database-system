-- DQL (Data Query Language)

-- 1. Display all students
SELECT *
FROM Student;


-- 2. Display students from Department ID 1
SELECT Student_ID, Student_Name, Email
FROM Student
WHERE Department_ID = 1;


-- 3. Display courses in alphabetical order
SELECT Course_ID, Course_Code, Course_Name, Credits
FROM Course
ORDER BY Course_Name;


-- 4. Display student names with their department names
SELECT s.Student_Name, d.Department_Name
FROM Student s
JOIN Department d
ON s.Department_ID = d.Department_ID;


-- 5. Display students with their enrolled courses
SELECT s.Student_Name,
       c.Course_Name,
       e.Academic_Year,
       e.Semester
FROM Student s
JOIN Enrollment e
ON s.Student_ID = e.Student_ID
JOIN Course c
ON e.Course_ID = c.Course_ID;

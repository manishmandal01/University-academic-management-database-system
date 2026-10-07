-- DML (Data Manipulation Language)

-- 1. Insert Department
INSERT INTO Department
(Department_ID, Department_Name, Department_Code, HOD_Name)
VALUES
(1, 'Information Technology', 'IT', 'Dr. Faculty Name');


-- 2. Insert Student
INSERT INTO Student
(Student_ID, Student_Name, Roll_Number, Email, Department_ID)
VALUES
(101, 'Student One', 'IT01', 'student1@example.edu', 1);


-- 3. Insert Faculty
INSERT INTO Faculty
(Faculty_ID, Faculty_Name, Designation, Department_ID)
VALUES
(201, 'Faculty One', 'Assistant Professor', 1);


-- 4. Insert Course
INSERT INTO Course
(Course_ID, Course_Code, Course_Name, Credits, Semester, Department_ID, Faculty_ID)
VALUES
(301, '23IT05', 'Database Management Systems', 4, 5, 1, 201);


-- 5. Insert Enrollment
INSERT INTO Enrollment
(Enrollment_ID, Student_ID, Course_ID, Enrollment_Date, Academic_Year, Semester)
VALUES
(401, 101, 301, SYSDATE, '2026-27', 5);


-- 6. Insert Result
INSERT INTO Result
(Result_ID, Enrollment_ID, Internal_Marks, External_Marks, Total_Marks, Grade, Result_Status)
VALUES
(501, 401, 28, 62, 90, 'A+', 'PASS');

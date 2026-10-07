CREATE TABLE Department (
    Department_ID NUMBER PRIMARY KEY,
    Department_Name VARCHAR2(100) NOT NULL,
    Department_Code VARCHAR2(20) UNIQUE,
    HOD_Name VARCHAR2(100)
);


CREATE TABLE Student (
    Student_ID NUMBER PRIMARY KEY,
    Student_Name VARCHAR2(100) NOT NULL,
    Roll_Number VARCHAR2(30) UNIQUE,
    Gender VARCHAR2(20),
    DOB DATE,
    Age NUMBER,
    Email VARCHAR2(100) UNIQUE,
    Phone_No VARCHAR2(15),
    Admission_Date DATE,
    Address VARCHAR2(200),
    Department_ID NUMBER,

    CONSTRAINT fk_student_dept
        FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID)
);


CREATE TABLE Faculty (
    Faculty_ID NUMBER PRIMARY KEY,
    Faculty_Name VARCHAR2(100) NOT NULL,
    Qualification VARCHAR2(100),
    Designation VARCHAR2(50),
    Email VARCHAR2(100) UNIQUE,
    Phone_No VARCHAR2(15),
    Join_Date DATE,
    Experience NUMBER,
    Department_ID NUMBER,

    CONSTRAINT fk_faculty_dept
        FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID)
);


CREATE TABLE Course (
    Course_ID NUMBER PRIMARY KEY,
    Course_Code VARCHAR2(20) UNIQUE,
    Course_Name VARCHAR2(100) NOT NULL,
    Credits NUMBER CHECK (Credits > 0),
    Semester NUMBER,
    Department_ID NUMBER,
    Faculty_ID NUMBER,

    CONSTRAINT fk_course_dept
        FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID),

    CONSTRAINT fk_course_faculty
        FOREIGN KEY (Faculty_ID)
        REFERENCES Faculty(Faculty_ID)
);


CREATE TABLE Enrollment (
    Enrollment_ID NUMBER PRIMARY KEY,
    Student_ID NUMBER NOT NULL,
    Course_ID NUMBER NOT NULL,
    Enrollment_Date DATE,
    Academic_Year VARCHAR2(20),
    Semester NUMBER,

    CONSTRAINT fk_enroll_student
        FOREIGN KEY (Student_ID)
        REFERENCES Student(Student_ID),

    CONSTRAINT fk_enroll_course
        FOREIGN KEY (Course_ID)
        REFERENCES Course(Course_ID)
);


CREATE TABLE Result (
    Result_ID NUMBER PRIMARY KEY,
    Enrollment_ID NUMBER NOT NULL,
    Internal_Marks NUMBER,
    External_Marks NUMBER,
    Total_Marks NUMBER,
    Grade VARCHAR2(5),
    Result_Status VARCHAR2(20),

    CONSTRAINT fk_result_enrollment
        FOREIGN KEY (Enrollment_ID)
        REFERENCES Enrollment(Enrollment_ID)
);

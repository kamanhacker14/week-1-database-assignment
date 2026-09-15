-- Week 1 Database Assignment
-- Topic: School Management System

-- Create the database
CREATE DATABASE school_management;

-- Select the database
USE school_management;

-- Create Students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100)
);

-- Create Teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(100),
    email VARCHAR(100)
);

-- Create Courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Create Enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample teachers
INSERT INTO teachers (first_name, last_name, subject, email)
VALUES
('John', 'Kamau', 'Mathematics', 'john.kamau@example.com'),
('Mary', 'Achieng', 'English', 'mary.achieng@example.com');

-- Insert sample students
INSERT INTO students (first_name, last_name, gender, date_of_birth, email)
VALUES
('David', 'Otieno', 'Male', '2005-04-12', 'david.otieno@example.com'),
('Grace', 'Wanjiku', 'Female', '2006-08-20', 'grace.wanjiku@example.com');

-- Insert sample courses
INSERT INTO courses (course_name, course_code, teacher_id)
VALUES
('Mathematics', 'MATH101', 1),
('English Language', 'ENG101', 2);

-- Insert sample enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-09-01'),
(2, 2, '2026-09-01');

-- Display the tables
SHOW TABLES;

-- Display students
SELECT * FROM students;

-- Display teachers
SELECT * FROM teachers;

-- Display courses
SELECT * FROM courses;

-- Display enrollments
SELECT * FROM enrollments;

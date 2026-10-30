-- Create a database
CREATE DATABASE CollegeDB;

-- Select the database
USE CollegeDB;

-- 1. CREATE TABLE
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(30)
);

-- Display table structure
DESC Student;

-- 2. ALTER TABLE - Add a column
ALTER TABLE Student
ADD Email VARCHAR(100);

-- Display updated structure
DESC Student;

-- 3. ALTER TABLE - Modify a column
ALTER TABLE Student
MODIFY Name VARCHAR(100);

-- 4. ALTER TABLE - Rename a column
ALTER TABLE Student
RENAME COLUMN Course TO CourseName;

-- Display updated structure
DESC Student;

-- 5. ALTER TABLE - Drop a column
ALTER TABLE Student
DROP COLUMN Email;

-- Display updated structure
DESC Student;

-- 6. RENAME TABLE
RENAME TABLE Student TO StudentDetails;

-- 7. TRUNCATE TABLE
TRUNCATE TABLE StudentDetails;

-- 8. DROP TABLE
DROP TABLE StudentDetails;

-- Drop the database
DROP DATABASE CollegeDB;

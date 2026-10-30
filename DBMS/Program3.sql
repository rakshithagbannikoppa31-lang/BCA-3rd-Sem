-- 1. Create Database
CREATE DATABASE College;

-- 2. Select Database
USE College;

-- 3. Create Table
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(30)
);

-- 4. Insert Records
INSERT INTO Student VALUES
(1, 'Ravi', 20, 'BCA'),
(2, 'Anu', 21, 'BCA'),
(3, 'Priya', 20, 'MCA');

-- 5. Display Records
SELECT * FROM Student;

-- 6. Add Email Column
ALTER TABLE Student
ADD Email VARCHAR(100);

-- 7. Modify Age Column
ALTER TABLE Student
MODIFY Age INT NOT NULL;

-- 8. Rename Table
RENAME TABLE Student TO StudentDetails;

-- 9. Display Records
SELECT * FROM StudentDetails;

-- 10. Remove All Records
TRUNCATE TABLE StudentDetails;

-- 11. Check Records
SELECT * FROM StudentDetails;

-- 12. Delete Table
DROP TABLE StudentDetails;

-- 13. Check Tables
SHOW TABLES;

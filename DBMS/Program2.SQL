CREATE TABLE employee(
emp_id INT,
emp_name VARCHAR(50),
salary INT
);
ALTER TABLE employee
ADD department VARCHAR(30);
ALTER TABLE employee
MODIFY salary DECIMAL(10,2);
RENAME TABLE employee TO staff;
TRUNCATE TABLE staff;
DROP TABLE staff;
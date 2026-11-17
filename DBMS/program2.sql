mysql> CREATE DATABASE employee;
Query OK, 1 row affected (0.08 sec)

mysql> USE employee;
Database changed
mysql> CREATE TABLE employee(
    -> emp_id INT,
    -> emp_name VARCHAR(50),
    -> salary INT
    -> );
Query OK, 0 rows affected (0.24 sec)

mysql> ALTER TABLE employee
    -> ADD deparment VARCHAR(30);
Query OK, 0 rows affected (0.66 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE employee
    -> MODIFY salary DECIMAL(10,2);
Query OK, 0 rows affected (0.54 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> RENAME TABLE employee TO staff;
Query OK, 0 rows affected (0.17 sec)

mysql> TRUNCATE TABLE staff;
Query OK, 0 rows affected (0.30 sec)

mysql> DROP TABLE staff;
Query OK, 0 rows affected (0.14 sec)
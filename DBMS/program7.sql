mysql> use College;
Database changed
mysql> CREATE VIEW high_marks AS
    -> CREATE VIEW bca_students AS
    -> SELECT id,name,marks
    -> FROM student
    -> WHERE department='BCA';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE VIEW bca_students AS
SELECT id,name,marks
FROM student
WHERE department='' at line 2
mysql> CREATE VIEW bca_students AS
    -> SELECT id,name,marks
    -> FROM student
    -> WHERE department='BCA';
Query OK, 0 rows affected (0.13 sec)

mysql> SELECT*FROM bca_students;
+----+-------+-------+
| id | name  | marks |
+----+-------+-------+
|  1 | Akash |    85 |
|  2 | Ravi  |    75 |
|  4 | Manoj |    60 |
|  6 | Kiran |    95 |
+----+-------+-------+
4 rows in set (0.13 sec)

mysql> CREATE VIEW high_marks AS
    -> SELECT id,name,marks
    -> FROM student
    -> WHERE marks>80;
Query OK, 0 rows affected (0.09 sec)

mysql> SELECT*FROM high_marks;
+----+-------+-------+
| id | name  | marks |
+----+-------+-------+
|  1 | Akash |    85 |
|  3 | Priya |    90 |
|  6 | Kiran |    95 |
+----+-------+-------+
3 rows in set (0.00 sec)

mysql> CREATE OR REPLACE VIEW bca_students AS
    -> SELECT id,name,marks,city
    -> FROM student
    -> WHERE department='BCA';
Query OK, 0 rows affected (0.12 sec)

mysql> DROP VIEW bca_students;
Query OK, 0 rows affected (0.09 sec)

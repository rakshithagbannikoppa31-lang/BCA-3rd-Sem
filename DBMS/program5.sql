mysql> use College;
Database changed
mysql> SELECT*FROM student
    -> WHERE marks>(SELECT AVG(marks)FROM student);
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  3 | Priya | BCom       |    90 | Koppal     |
|  6 | Kiran | BCA        |    95 | Gangavathi |
+----+-------+------------+-------+------------+
3 rows in set (0.10 sec)

mysql> SELECT*FROM student
    -> WHERE marks=(SELECT MAX(marks)FROM student);
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  6 | Kiran | BCA        |    95 | Gangavathi |
+----+-------+------------+-------+------------+
1 row in set (0.03 sec)

mysql> SELECT*FROM student
    -> WHERE department=(
    -> SELECT department
    -> FROM student
    -> WHERE name='Akash'
    -> );
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  2 | Ravi  | BCA        |    75 | Gangavathi |
|  4 | Manoj | BCA        |    60 | Yelburga   |
|  6 | Kiran | BCA        |    95 | Gangavathi |
+----+-------+------------+-------+------------+
4 rows in set (0.02 sec)

mysql> SELECT marks
    -> FROM student
    -> WHERE name='Ravi'
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 4
mysql> SELECT*FROM student
    -> WHERE marks>(
    -> SELECT marks
    -> FROM student
    -> WHERE name='Akash'
    -> );
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  3 | Priya | BCom       |    90 | Koppal     |
|  6 | Kiran | BCA        |    95 | Gangavathi |
+----+-------+------------+-------+------------+
2 rows in set (0.00 sec)

mysql> SELECT MAX(marks)
    -> FROM student
    -> WHERE marks<(
    -> SELECT MAX(marks)
    -> FROM student
    -> );
+------------+
| MAX(marks) |
+------------+
|         90 |
+------------+
1 row in set (0.00 sec)

mysql>


CREATE USER'student1'@'localhost'
IDENTIFIED BY'12345'' at line 1
mysql> USE college
Database changed
mysql> USE college;
Database changed
mysql> CREATE USER'student1'@'localhost'
    -> IDENTIFIED BY '12345';
Query OK, 0 rows affected (0.12 sec)

mysql> GRANT SELECT,INSERT
    -> ON college.*
    -> TO 'student1'@'localhost';
Query OK, 0 rows affected (0.06 sec)

mysql> SHOW GRANTS FOR 'student1'@'localhost';
+---------------------------------------------------------------+
| Grants for student1@localhost                                 |
+---------------------------------------------------------------+
| GRANT USAGE ON *.* TO `student1`@`localhost`                  |
| GRANT SELECT, INSERT ON `college`.* TO `student1`@`localhost` |
+---------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> REVOKE INSERT
    -> ON college.*
    -> FROM'student1'@'localhost;
    '> FROM'student1'@'localhost';
    '>
    '> ^C
mysql> REVOKE INSERT
    -> ON college.*
    -> FROM'student1'@'localhost';
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE account(
    -> acc-no INT PRIMARY KEY,
    -> name VARCHAR(30),
    -> balance INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-no INT PRIMARY KEY,
name VARCHAR(30),
balance INT
)' at line 2
mysql> CREATE TABLE account(
    -> acc-no INT PRIMARY KEY,
    -> name VARCHAR(30),
    -> balance INT,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-no INT PRIMARY KEY,
name VARCHAR(30),
balance INT,
)' at line 2
mysql> CREATE TABLE account(
    -> acc_no INT PRIMARY KEY,
    -> name VARCHAR(30),
    -> balance INT
    -> );
Query OK, 0 rows affected (0.24 sec)

mysql> INSERT INTO account VALUES
    -> (101,'aKASH',5000),
    -> (102,'rAVI',3000);
Query OK, 2 rows affected (0.07 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE account
    -> SET balance =6000
    -> WHERE acc_n0=101;
ERROR 1054 (42S22): Unknown column 'acc_n0' in 'where clause'
mysql> UPDATE account
    -> SET balance =6000
    -> WHERE acc_no=101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> COMMIT;
Query OK, 0 rows affected (0.04 sec)

mysql>  START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE account
    -> SET balance =1000
    -> WHERE acc_no=102;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> ROLLBACK;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT*FROM account;
+--------+-------+---------+
| acc_no | name  | balance |
+--------+-------+---------+
|    101 | aKASH |    6000 |
|    102 | rAVI  |    3000 |
+--------+-------+---------+
2 rows in set (0.00 sec)

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql>  START TRANSACTION;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE account SET balance =7000
    -> WHERE acc_no=101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SAVEPOINT s1;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE account SET balance =2000
    -> WHERE acc_no=102;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> ROLLBACK TO s1;
Query OK, 0 rows affected (0.00 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0.04 sec)

mysql>








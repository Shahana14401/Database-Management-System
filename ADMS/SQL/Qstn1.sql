 create table student(Roll_no int , Sname varchar(30), S_address varchar(30), constraint stu primary key(Roll_no));
Query OK, 0 rows affected (0.09 sec)

insert into student (Roll_no , Sname , S_address) values(1,'Rahul','Pattom');
Query OK, 1 row affected (0.04 sec)

mysql> insert into student (Roll_no , Sname , S_address) values(2,'Sachin','Ambala mukku');
Query OK, 1 row affected (0.04 sec)

mysql> insert into student (Roll_no , Sname , S_address) values(3,'Sourav','nalanchira');
Query OK, 1 row affected (0.04 sec)

create table marksheet(Rollno int , sub1 int , sub2 int , sub3 int , constraint mark foreign key(Rollno) references student(Roll_no));
Query OK, 0 rows affected (0.14 sec)


mysql> insert into marksheet(Rollno , sub1 , sub2 , sub3) values(1,78,30,45);
Query OK, 1 row affected (0.08 sec)

mysql> insert into marksheet(Rollno , sub1 , sub2 , sub3) values(2,45,65,50);
Query OK, 1 row affected (0.05 sec)

mysql> insert into marksheet(Rollno , sub1 , sub2 , sub3) values(3,60,87,33);
Query OK, 1 row affected (0.06 sec)

mysql> select *from student;
+---------+--------+--------------+
| Roll_no | Sname  | S_address    |
+---------+--------+--------------+
|       1 | Rahul  | Pattom       |
|       2 | Sachin | Ambala mukku |
|       3 | Sourav | nalanchira   |
+---------+--------+--------------+
3 rows in set (0.00 sec)

mysql> select * from marksheet;
+--------+------+------+------+
| Rollno | sub1 | sub2 | sub3 |
+--------+------+------+------+
|      1 |   78 |   30 |   45 |
|      2 |   45 |   65 |   50 |
|      3 |   60 |   87 |   33 |
+--------+------+------+------+
3 rows in set (0.00 sec)

 alter table marksheet add Grade varchar(20);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from marksheet;
+--------+------+------+------+-------+
| Rollno | sub1 | sub2 | sub3 | Grade |
+--------+------+------+------+-------+
|      1 |   78 |   30 |   45 | NULL  |
|      2 |   45 |   65 |   50 | NULL  |
|      3 |   60 |   87 |   33 | NULL  |
+--------+------+------+------+-------+
3 rows in set (0.00 sec)

mysql> alter table marksheet drop sub3;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from marksheet;
+--------+------+------+-------+
| Rollno | sub1 | sub2 | Grade |
+--------+------+------+-------+
|      1 |   78 |   30 | NULL  |
|      2 |   45 |   65 | NULL  |
|      3 |   60 |   87 | NULL  |
+--------+------+------+-------+
3 rows in set (0.00 sec)

alter table student add phone_no int;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

alter table student add constraint ph check(length(phone_no)=10);
Query OK, 3 rows affected (0.15 sec)
Records: 3  Duplicates: 0  Warnings: 0


 insert into student values(4,'krishna','attingal',1902725021);
Query OK, 1 row affected (0.04 sec)

mysql> select * from student;
+---------+---------+--------------+------------+
| Roll_no | Sname   | S_address    | phone_no   |
+---------+---------+--------------+------------+
|       1 | Rahul   | Pattom       |       NULL |
|       2 | Sachin  | Ambala mukku |       NULL |
|       3 | Sourav  | nalanchira   |       NULL |
|       4 | krishna | attingal     | 1902725021 |
+---------+---------+--------------+------------+
4 rows in set (0.00 sec)



a)  

mysql> select Sname , S_address from student where S_address='pattom';
+-------+-----------+
| Sname | S_address |
+-------+-----------+
| Rahul | Pattom    |
+-------+-----------+
1 row in set (0.00 sec)

b)

mysql> select sub1+sub2 from marksheet,student where Rollno =2 and student.Roll_no = marksheet.Rollno;
+-----------+
| sub1+sub2 |
+-----------+
|       110 |
+-----------+
1 row in set (0.02 sec)

c)

mysql> select Sname from student where Roll_no=3;
+--------+
| Sname  |
+--------+
| Sourav |
+--------+
1 row in set (0.02 sec)

d)

update student set phone_no=1234567890 where Rollno=3;
update student set phone_no=1234567890 where Rollno=2;
update student set phone_no=1234567890 where Rollno=1;

mysql> select phone_no from student where Sname='Sachin';

+------------+
| phone_no   |
+------------+
| 1234567890 |
+------------+
1 row in set (0.00 sec)


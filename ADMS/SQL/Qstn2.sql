-----------------------------------------------------------------------------------------------------------------CREATION------------------------------------------------
mysql> create table department(depid int primary key , name varchar(20));
mysql> create table company(cmpid int primary key , name varchar(20) , city varchar(20) , no_emp int);
mysql> create table employee(empid int primary key , name varchar(20) , cmpid int , desig varchar(20) , salary int, city varchar(20) , foreign key(cmpid) references company(cmpid));
mysql> create table staff(id int primary key, name varchar(20) , deptid int , desig varchar(20) , salary int , city varchar(20) , foreign key(deptid) references department(depid));
 create table students(stdid int , name varchar(20) , class varchar(20) , city varchar(20) , tmark int , depid int , foreign key(depid) references department(depid));
 
 mysql> desc department;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| depid | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.06 sec)

mysql> desc company;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| cmpid  | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| city   | varchar(20) | YES  |     | NULL    |       |
| no_emp | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| empid  | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| cmpid  | int         | YES  | MUL | NULL    |       |
| desig  | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| city   | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> desc students;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| stdid | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| class | varchar(20) | YES  |     | NULL    |       |
| city  | varchar(20) | YES  |     | NULL    |       |
| tmark | int         | YES  |     | NULL    |       |
| depid | int         | YES  | MUL | NULL    |       |
+-------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)
--------------------------------------------------------------------------------------------------------------------------------INSERTION--------------------------------
mysql> insert into department values(1001,'MCA');
Query OK, 1 row affected (0.04 sec)

mysql> insert into department values(1002,'MBA');
Query OK, 1 row affected (0.05 sec)

mysql> insert into department values(1003,'MECH');
Query OK, 1 row affected (0.06 sec)

mysql> select * from department;
+-------+------+
| depid | name |
+-------+------+
|  1001 | MCA  |
|  1002 | MBA  |
|  1003 | MECH |
+-------+------+
3 rows in set (0.00 sec)

mysql> insert into company values(2001,'HR','TVM',6);
Query OK, 1 row affected (0.04 sec)

mysql> insert into company values(2002,'TATA','Kochi',8);
Query OK, 1 row affected (0.04 sec)

mysql> insert into company values(2003,'IT Solutions','Alapuzha',3);
Query OK, 1 row affected (0.04 sec)

mysql> select * from company;
+-------+--------------+----------+--------+
| cmpid | name         | city     | no_emp |
+-------+--------------+----------+--------+
|  2001 | HR           | TVM      |      6 |
|  2002 | TATA         | Kochi    |      8 |
|  2003 | IT Solutions | Alapuzha |      3 |
+-------+--------------+----------+--------+
3 rows in set (0.00 sec)

mysql> insert into employee values(3001,'Raman',2001,'clerk',10000,'aluva');
Query OK, 1 row affected (0.05 sec)

mysql> insert into employee values(3002,'Abhiram',2002,'ass-prof',15000,'tvm');
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(3003,'shilpa',2003,'salesgirl',25000,'kochi');
Query OK, 1 row affected (0.04 sec)

mysql> select * from employee;
+-------+---------+-------+-----------+--------+-------+
| empid | name    | cmpid | desig     | salary | city  |
+-------+---------+-------+-----------+--------+-------+
|  3001 | Raman   |  2001 | clerk     |  10000 | aluva |
|  3002 | Abhiram |  2002 | ass-prof  |  15000 | tvm   |
|  3003 | shilpa  |  2003 | salesgirl |  25000 | kochi |
+-------+---------+-------+-----------+--------+-------+
3 rows in set (0.00 sec)


mysql> insert into students values(001,'Akshay','MCA','Trivandum',300,1001);
Query OK, 1 row affected (0.03 sec)

mysql> insert into students values(002,'Arunima','MBA','Kollam',270,1002);
Query OK, 1 row affected (0.03 sec)

mysql> insert into students values(003,'Krish','MCA','Trivandrum',200,1001);
Query OK, 1 row affected (0.03 sec)

mysql> insert into students values(004,'Nevil','MBA','Aluva',150,1002);
Query OK, 1 row affected (0.03 sec)

mysql> select * from students;
+-------+---------+-------+------------+-------+-------+
| stdid | name    | class | city       | tmark | depid |
+-------+---------+-------+------------+-------+-------+
|     1 | Akshay  | MCA   | Trivandum  |   300 |  1001 |
|     2 | Arunima | MBA   | Kollam     |   270 |  1002 |
|     3 | Krish   | MCA   | Trivandrum |   200 |  1001 |
|     4 | Nevil   | MBA   | Aluva      |   150 |  1002 |
+-------+---------+-------+------------+-------+-------+
4 rows in set (0.00 sec)

mysql> insert into staff values(3002,'Deepa',1001,'Ass-Prof',32000,'Trivandrum');
Query OK, 1 row affected (0.03 sec)

mysql> insert into staff values(6001,'Samuel',1001,'Ass-Prof',31000,'Kollam');
Query OK, 1 row affected (0.04 sec)

mysql> insert into staff values(6002,'Aleena',1002,'Prof',38000,'Aluva');
Query OK, 1 row affected (0.04 sec)

mysql> insert into staff values(6003,'Rojin',1003,'clerk',18000,'Aluva');
Query OK, 1 row affected (0.03 sec)

mysql> select * from staff;
+------+--------+--------+----------+--------+------------+
| id   | name   | deptid | desig    | salary | city       |
+------+--------+--------+----------+--------+------------+
| 3002 | Deepa  |   1001 | Ass-Prof |  32000 | Trivandrum |
| 6001 | Samuel |   1001 | Ass-Prof |  31000 | Kollam     |
| 6002 | Aleena |   1002 | Prof     |  38000 | Aluva      |
| 6003 | Rojin  |   1003 | clerk    |  18000 | Aluva      |
+------+--------+--------+----------+--------+------------+
4 rows in set (0.00 sec)

----------------------------------------------------------------------------------------------------------------OPERATIONS-----------------------------------------------

 a) Display all students details department wise 
 
  select * from students order by depid;
  +-------+---------+-------+------------+-------+-------+
| stdid | name    | class | city       | tmark | depid |
+-------+---------+-------+------------+-------+-------+
|     1 | Akshay  | MCA   | Trivandum  |   300 |  1001 |
|     3 | Krish   | MCA   | Trivandrum |   200 |  1001 |
|     2 | Arunima | MBA   | Kollam     |   270 |  1002 |
|     4 | Nevil   | MBA   | Aluva      |   150 |  1002 |
+-------+---------+-------+------------+-------+-------+

b) display all employees 

 select * from employee;
 +-------+---------+-------+-----------+--------+-------+
| empid | name    | cmpid | desig     | salary | city  |
+-------+---------+-------+-----------+--------+-------+
|  3001 | Raman   |  2001 | clerk     |  10000 | aluva |
|  3002 | Abhiram |  2002 | ass-prof  |  15000 | tvm   |
|  3003 | shilpa  |  2003 | salesgirl |  25000 | kochi |
+-------+---------+-------+-----------+--------+-------+

c) Display all staff details whose salary>20000

select * from staff where salary>20000;
+------+--------+--------+----------+--------+------------+
| id   | name   | deptid | desig    | salary | city       |
+------+--------+--------+----------+--------+------------+
| 3002 | Deepa  |   1001 | Ass-Prof |  32000 | Trivandrum |
| 6001 | Samuel |   1001 | Ass-Prof |  31000 | Kollam     |
| 6002 | Aleena |   1002 | Prof     |  38000 | Aluva      |
+------+--------+--------+----------+--------+------------+

d) Display all students whose percentage  >80 and less than 90

select * from students where percentage >80 and percentage <90;
+-------+---------+-------+--------+-------+-------+------------+
| stdid | name    | class | city   | tmark | depid | percentage |
+-------+---------+-------+--------+-------+-------+------------+
|     2 | Arunima | MBA   | Kollam |   270 |  1002 |         85 |
+-------+---------+-------+--------+-------+-------+------------+

----------------------------------------------------------------------------------------------------------------PART 4-----------------------------------------------

a)Display students who belong to 'MCA' department.

select students.name from students,department where department.depid=students.depid and department.name='mca';
+--------+
| name   |
+--------+
| Akshay |
| Krish  |
+--------+

b) update the salary of all staff by 10% whose designation is 'Associate professor' 

 update staff set salary=(salary+(salary*.1)) where desig='Ass-prof';
 +------+--------+--------+----------+--------+------------+
| id   | name   | deptid | desig    | salary | city       |
+------+--------+--------+----------+--------+------------+
| 3002 | Deepa  |   1001 | Ass-Prof |  35200 | Trivandrum |
| 6001 | Samuel |   1001 | Ass-Prof |  34100 | Kollam     |
| 6002 | Aleena |   1002 | Prof     |  38000 | Aluva      |
| 6003 | Rojin  |   1003 | clerk    |  18000 | Aluva      |
+------+--------+--------+----------+--------+------------+

c) Display all employees whose city is same as their company they work

select employee.name from employee,company where employee.empid=company.cmpid and employee.city=company.city;
Empty set (0.01 sec)

d) display the count of staff department wise

select depid,count(department.depid) from staff,department group by department.depid;
+-------+-------------------------+
| depid | count(department.depid) |
+-------+-------------------------+
|  1003 |                       4 |
|  1002 |                       4 |
|  1001 |                       4 |
+-------+-------------------------+

e)delete the company details whose no of employees is <5
 
 (i) delete from compamy where no_emp<5;
 (ii)  delete from company where no_emp<5;
 (iii) select * from employee;
 +-------+---------+-------+----------+--------+-------+
| empid | name    | cmpid | desig    | salary | city  |
+-------+---------+-------+----------+--------+-------+
|  3001 | Raman   |  2001 | clerk    |  10000 | aluva |
|  3002 | Abhiram |  2002 | ass-prof |  15000 | tvm   |
+-------+---------+-------+----------+--------+-------+

 ----------------------------------------------------------------------------------------------------------------PART 5-----------------------------------------------
 
a) Display all staff and student details that belong to same department

 select * from students inner join staff on students.depid=staff.deptid;
+-------+---------+-------+------------+-------+-------+------------+------+--------+--------+----------+--------+------------+
| stdid | name    | class | city       | tmark | depid | percentage | id   | name   | deptid | desig    | salary | city       |
+-------+---------+-------+------------+-------+-------+------------+------+--------+--------+----------+--------+------------+
|     1 | Akshay  | MCA   | Trivandum  |   300 |  1001 |         80 | 6001 | Samuel |   1001 | Ass-Prof |  34100 | Kollam     |
|     1 | Akshay  | MCA   | Trivandum  |   300 |  1001 |         80 | 3002 | Deepa  |   1001 | Ass-Prof |  35200 | Trivandrum |
|     2 | Arunima | MBA   | Kollam     |   270 |  1002 |         85 | 6002 | Aleena |   1002 | Prof     |  38000 | Aluva      |
|     3 | Krish   | MCA   | Trivandrum |   200 |  1001 |         90 | 6001 | Samuel |   1001 | Ass-Prof |  34100 | Kollam     |
|     3 | Krish   | MCA   | Trivandrum |   200 |  1001 |         90 | 3002 | Deepa  |   1001 | Ass-Prof |  35200 | Trivandrum |
|     4 | Nevil   | MBA   | Aluva      |   150 |  1002 |         95 | 6002 | Aleena |   1002 | Prof     |  38000 | Aluva      |
+-------+---------+-------+------------+-------+-------+------------+------+--------+--------+----------+--------+------------+

b) Display the staff who earn maximum salary from each department 

select distinct staff.name from staff,students where staff.salary>25000 and staff.city=students.city;
+--------+
| name   |
+--------+
| Samuel |
| Deepa  |
| Aleena |
+--------+

c) Display staff whose salary>25000 and city same as his/her student.

select name from staff where salary in(select max(salary) from staff group by deptid);
+--------+
| name   |
+--------+
| Deepa  |
| Aleena |
| Rojin  |
+--------+

create database Assignment2
use Assignment2
--department table
create table Department(Dept_no varchar(5)  not null,
Dept_name varchar(30)null,
location varchar(30)null)
 
insert into Department values('d1','Research','Dallas'),
('d2','Accounting','Seattle'),('d3','Marketing','Dallas')
 
select*from Department
 
 
--Employee table
 
create table Employee(emp_no integer not null,
emp_fname varchar(30) not null,
emp_lname varchar(30)not null,
dept_no varchar(5) not null)
 
insert into Employee values(25348,'Mathew','smith','d3'),
(10102,'Ann','jones','d3'),
(18316,'John','Barrimore','d1'),
(29346,'James','James','d2')
 
select*from Employee
 
--Project table
 
create table Project(project_no varchar(5) not null,
project_name varchar(30) not null,
Budget integer null)
 
insert into Project values('p1','Apollo',120000),
('p2','Gemini', 95000),
('p3','Mercury', 18560)
 
select*from Project
 
--Works_on table
 
create table Works_on(emp_no integer not null,
project_no varchar(5) not null,
Job varchar(30) null,enter_date date null)
 
insert into Works_on values
(10102,'p1','Analyst','1997.10.1'),
(10102,'p3','manager','1999.1.1'),
(25348 ,'p2 ','Clerk' ,'1998.2.15'),
(18316,'p2','NULL','1998.6.1'),
(29346,'p2','NULL','1997.12.15'),
(2581,'p3','Analyst','1998.10.15'),
(9031,'p1','Manager','1998.4.15'),
(28559,'p1','NULL','1998.8.1'),
(28559,'p2','Clerk','1992.2.1'),
(9031,'p3','Clerk','1997.11.15'),
(29346,'p1','Clerk','1998.1.4')
 
--Question 1
 
select*from Works_on
 
--Question 2
 
select emp_no from Works_on where Job='Clerk'
 
--Question 3
 
select emp_no as 'Employee Number' from Works_on where project_no='p2' and emp_no<10000
 
--Question 4
select emp_no as 'Employee Number' from Works_on where enter_date not like '1998'
 
--Question 5
 
select  emp_no as 'Employee Number' from Works_on where project_no='p1' and (job='Analyst' or job='manager')
 
--Question 6
 
select enter_date from Works_on where project_no='p2' and Job ='null'
 
--Question 7
 
select emp_no , emp_lname from Employee where emp_fname like '%tt%'
 
--Question 8
 
select emp_no , emp_fname from Employee where (emp_lname like '_o%' or emp_lname like '_a%') and emp_lname like '%es'
 
--Question 9
 
select e.emp_no from Employee e join Department d on d.Dept_no=e.dept_no where d.location='Seattle'
 
--Question 10
 
--select e.emp_fname,e.emp_lname,w.project_no from Employee e join Works_on w on  
 
select e.emp_fname, e.emp_lname from Employee e where e.emp_no=(Select emp_no from Works_on where enter_date='1998.1.4' )
 
--Question 11
 
SELECT project_no FROM Works_on GROUP BY Job HAVING COUNT(Job) > 2
 
--Question 12
select Max(emp_no) from Works_on
 
--Question 13
 
SELECT Job FROM Works_on GROUP BY Job HAVING COUNT(Job) > 2
 
--Question 14
 
SELECT emp_no FROM Employee WHERE dept_no = 'd3' OR emp_no IN (SELECT emp_no FROM Works_on WHERE Job = 'Clerk');
select*from Dept
select*from Employee

--inner join
select e.id,e.Name,e.JoinDate,e.Salary,d.Dept_Name from Employee e join Dept d on e.Dept_Code=d.Dept_Code
select e.id,e.Name,e.JoinDate,e.Salary,d.Dept_Name from Employee e join Dept d on e.Dept_Code=d.Dept_Code order by d.Dept_Name
select e.id,e.Name,e.JoinDate,e.Salary,d.Dept_Name from Employee e join Dept d on e.Dept_Code=d.Dept_Code where d.Dept_Name='Admin' order by d.Dept_Name
select COUNT(e.id) from Employee e join Dept d on e.Dept_Code=d.Dept_Code where d.Dept_Name='Admin'


--outer join
select e.id,e.Name,e.JoinDate,e.Salary,d.Dept_Name from Employee e left outer join Dept d on e.Dept_Code=d.Dept_Code
select e.id,e.Name,e.JoinDate,e.Salary,d.Dept_Name from Employee e right outer join Dept d on e.Dept_Code=d.Dept_Code
select e.id,e.Name,e.JoinDate,e.Salary,d.Dept_Name from Employee e full outer join Dept d on e.Dept_Code=d.Dept_Code

--cross join
select e.Name,d.dept_Name from Employee e,Dept d

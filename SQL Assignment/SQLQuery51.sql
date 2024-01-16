--Assignment4 
-- 1 Question
select * from Project
select * from Works_on
select * from Project p join Works_on w on p.project_no=w.project_no
select * from Project p left outer join Works_on w on p.project_no=w.project_no
select p.Project_name ,w.job from Project p , Works_on w
--2 Question
select * from Project
select * from Works_on
select * from Employee
select e.emp_no,w.job from Employee e join works_on w on w.emp_no=e.emp_no join project p on  p.project_name='Gemini'
--3 Question
SELECT Employee.emp_fname, Employee.emp_lname
FROM Employee
JOIN Department ON Employee.Dept_no = Department.Dept_no
WHERE Department.Dept_name IN ('Research', 'Accounting')
--4 Question
 
SELECT Works_on.enter_date
FROM Works_on
JOIN Employee ON Works_on.emp_no = Employee.emp_no
WHERE Employee.Dept_no= 'd1' AND Works_on.Job = 'Clerk'
--5 Question
select * from project
select * from works_on
SELECT *
FROM Project p
JOIN Works_on w ON p.Project_no = w.Project_no
WHERE w.Job = 'Clerk'
GROUP BY p.project_no
HAVING COUNT(w.emp_no) >= 2;
--6 Question
SELECT e.emp_fname, e.emp_lname
FROM Employee e
JOIN Works_on w ON e.emp_no = w.emp_no
WHERE w.project_no = 'p3' AND w.Job = 'Manager'
--7 Question
select * from Employee
select * from works_on
SELECT DISTINCT E1.emp_fname, E1.emp_lname
FROM Works_on W1
JOIN Employee E1 ON W1.emp_no = E1.emp_no
JOIN Works_on W2 ON W1.enter_date = W2.enter_date AND W1.emp_no <> W2.emp_no
--8 Question
select * from Department
select * from Employee
SELECT e1.emp_no
FROM Employee e1
JOIN Department d ON e1.Dept_no = d.Dept_no AND d.location = d.location
 
--9 Question
 
SELECT emp_no
FROM Employee
WHERE Dept_no = 'd3';
--10 Question
--join
SELECT e.Emp_no
FROM Employee e
JOIN Department d ON e.Dept_no = d.Dept_no
WHERE d.Dept_name = 'Marketing'
--correlated
select * from Department
select * from Employee
 
SELECT emp_no
FROM Employee
WHERE Dept_no IN (
  SELECT Dept_no
  FROM Department d
  WHERE d.dept_name = 'Marketing'
)
 
--11 Question
 
INSERT INTO Employee (emp_no, emp_fname, emp_lname)
VALUES (1111, 'Julia', 'Long');
--12 Question
select * from department
 
--13 Question
UPDATE Works_on
SET Job = 'Clerk'
WHERE project_no = 'p1' AND Job = 'Manager';
 
--14 Question
UPDATE project
SET Budget = NULL;
--15 Question
UPDATE Project
SET Budget = Budget * 1.1
WHERE project_no IN (SELECT project_no FROM Works_on WHERE emp_no = 10102 AND Job = 'Manager');
--16 Question
UPDATE Works_on
SET enter_date = '1998-12-12'
WHERE project_no = 'p1' AND emp_no IN (SELECT emp_no FROM Employee WHERE Dept_no = 'Sales');
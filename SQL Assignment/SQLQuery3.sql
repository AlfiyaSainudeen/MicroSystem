use TrainingDB
select*from Dept
insert into Dept(Dept_Code,Dept_Name) values('D0003','Product'),('D0004','Sales')

select*from Employee
insert into Employee(Id,Name,JoinDate,Salary,Dept_Code) values(3,'Varun',getdate(),89000,'D0002'),
(87,'Ram',getdate(),45345,'D0001'),
(9,'Ranjith',getdate(),66433,'D0003'),
(12,'Rohan',getdate(),43234,'D0002'),
(34,'Arya',getdate(),23454,'D0001'),
(45,'Aman',getdate(),98787,'D0002'),
(56,'Anna',getdate(),89878,'D0003'),
(67,'Monca',getdate(),87678,'D0002'),
(78,'Mic',getdate(),56789,'D0001'),
(90,'Nidhin',getdate(),34567,'D0002'),
(89,'Hani',getdate(),76545,'D0003'),
(53,'John',getdate(),34565,null),
(33,'Mani',getdate(),65434,null)

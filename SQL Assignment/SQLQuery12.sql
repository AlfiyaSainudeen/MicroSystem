create database Assesment

use Assesment

create table Subject(subjectId integer not null primary key,subtitle varchar(20))

create table Book(bookId integer not null primary key,
title varchar(20) not null,
price integer not null,volume integer not null,
author varchar(20)not null,
publichDate Date not null,
subjectId integer not null)

--Question 1

insert into Subject values(101,'Maths'),(102,'English'),(103,'Science'),(104,'Language'),(105,'History')
select *from Subject

--Question 2

insert into Book values(001,'Algorthim',500,10,'James','10-02-2000',101),
(002,'Poems',770,2,'SamJohn','12-25-1998',102),
(003,'Chemistry',450,1,'ZaraThomas','02-11-2003',103),
(004,'Hindi',1200,12,'KaramSingh','03-03-1997',104),
(005,'Civilization',2000,5,'Mic','04-11-2004',105),
(006,'Logistics',800,8,'Max','09-10-2000',101),
(007,'Stories',770,2,'Antony','05-25-2002',102),
(008,'Physics',1050,6,'Max','06-07-2005',103),
(009,'Arabic',200,1,'Kareem','10-10-2010',104),
(010,'Culture',1500,3,'SamJohn','04-11-2000',105),
(011,'Equations',1500,20,'Elizabeth','08-18-2001',101),
(012,'Patterns',70,17,'Alice','07-25-2008',101),
(013,'Biology',750,12,'Max','02-11-2004',103),
(014,'Kannada',200,2,'KaramSingh','09-03-1995',104),
(015,'Pyramid',800,3,'Meera','04-07-2008',105)

select*from Book

--Question 3

select b.*,s.subtitle from Book b join Subject s on b.subjectId=s.subjectId

--Question 4

select*from Book where publichDate between '01-01-2002' and '12-12-2010'

--Question 5

SELECT author, COUNT(*) AS BookCount FROM Book GROUP BY author;

--Question 6

SELECT Subject.subtitle, COUNT(*) AS SubjectCount
FROM Book
JOIN Subject ON Book.subjectId = Subject.subjectId
GROUP BY Subject.subtitle;

--Question 7

select*from Book where YEAR(publichDate)=2000

--Question 8
-- update book id 1 values (001,'Algorthim',500,10,'James','10-02-2000',101)

UPDATE Book SET price = 150, volume = 3 WHERE bookId =001

--Question 9

UPDATE Book SET price = price * 1.1
WHERE subjectId = (SELECT subjectId FROM Subject WHERE subtitle = 'English');

--Question 10

delete from Book where bookId=10

--Question 11

select*from Book where price>500 and subjectId=(select subjectId from Subject where subtitle='Maths')

--Question 12

select b.*,s.subtitle from Book b join Subject s on b.subjectId=s.subjectId order by s.subtitle ASC

--Question 13

select min(price) as 'Minimum Price' from book

--Question 14

select min(price) as 'Minimum Price' from book

--Question 15

SELECT COUNT(*) AS BookCount FROM Book WHERE subjectId = (SELECT subjectId FROM Subject WHERE subtitle = 'Maths');


--Question 16

select b.*,s.subtitle from Book b join Subject s on b.subjectId=s.subjectId
where (s.subtitle='Maths' or s.subtitle='English' or s.subtitle='science')


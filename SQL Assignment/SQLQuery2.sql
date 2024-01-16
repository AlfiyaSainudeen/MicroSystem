--Order By

select*from sales order by qty
select*from sales order by qty desc
select*from sales where qty>30 order by qty asc
select*from sales where qty>30 order by qty desc
select*from sales order by ord_date 

select*from authors
select * from authors order by state,city
select au_id,state,city from authors order by state,city

--counting authors per each state
select state,COUNT(*) as 'Authors Count' from authors group by state

--counting authors per each state minimum 2 authors from each state
select state,COUNT(*) as 'Authors Count' from authors group by state having COUNT(*)>1
select state,COUNT(*) as 'Authors Count' from authors group by state having COUNT(*)>1 order by [Authors Count]

select * from sales
--get sum of the qty of each sore
select stor_id,sum(qty) as 'Total qty' from sales group by stor_id

--get sum of qty of each store minimum sum is 50
select stor_id,sum(qty) as 'Total qty' from sales group by stor_id having SUM(qty)>50

select state,COUNT(*) as 'Authors Count' from authors group by state
select state,COUNT(*) as 'Authors Count' from authors where contract=1 group by state
select state,COUNT(*) as 'Authors Count' from authors where contract=1 group by state order by[Authors Count]

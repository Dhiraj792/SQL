-- joins:- join are use with select statement.it is used to retrieve from multiple tables
/*
inner join-matched records
*/
use d;
create table t1(
num int
);
create table t2(num int);
insert into t1 values(10),(11),(12),(14);
insert into t2 values(11),(12),(12),(15);
select * from t1 inner join t2 on t1.num=t2.num;           

update t2
set num=13
where num=12;
use hrdatabase;
select * from employees inner join departments on employees.department_id=departments.department_id; 
use classicmodels;
select productcode,productname,
textdescription
from 
products
inner join productlines
on products.productline=productlines.productline;
-- with the help of using 
select productcode,productname,
textdescription
from 
products
inner join productlines
using(productline);

       
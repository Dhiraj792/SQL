-- UNION:-UNION operator to complete two or more result sets from multiple select statements into a single result set
use demodb;
create table t1(id int);
create table t2(id int);
insert into t1 values(1),(2),(3);
insert into t2 values (2),(3),(4);
select * from t1;
select * from t1
union 
select * from t2;
-- it will not give the duplicate values 






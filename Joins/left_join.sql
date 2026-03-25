-- left join--> matched records+unmatched record from from left table
use d;
select * from t1 left join t2 on t1.num=t2.num;        
use classicmodels;
select * from customers t1 left join orders t2 on t1.customerNumber=t2.customernumber;
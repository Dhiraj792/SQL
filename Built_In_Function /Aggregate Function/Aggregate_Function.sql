use classicmodels;
select * from orderdetails;
select * from orderdetails;
-- SUM
select sum(quantityOrdered) salesqty from orderdetails;
select sum(quantityOrdered*priceeach) total_order from orderdetails where orderNumber=10101;
create table sum_demo(
qtyorder int,price int
);
insert into sum_demo(qtyorder,price)
values(1,5),(1,6),(2,7),(4,5),(3,6);
select * from sum_demo;
-- AVG
select avg(buyprice) from products;
select count(*) from sum_demo;
select count(*) from sum_demo where qtyorder=1;
select count(*) from customers where country="France";
-- MAX AND MIN;
select max(amount) from payments;
select min(amount) from payments;



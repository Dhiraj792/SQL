-- sub Queries:- A MySQL subquery is a query nested within another query such as select wihtin another query such as 
-- select,insert,update or delete also a subquery can be nested within another subquery
use hrdatabase;
select * from employees;
select first_name,last_name,salary from employees where salary>12000;
select salary from employees where first_name='michael';
-- now we want to find the salary which is greater than michael
 select first_name,last_name,salary from employees where salary >(select salary from employees where first_name='michael');
use classicmodels;
-- the following query returns the customer who has the highest payment
select 
	customerNumber,
    checkNumber,
    amount
from
	payments
where
	amount=(select max(amount) from payments);
    
-- list employees having highest salary
select max(salary) from employees;
select first_name,last_name,salary from employees where salary=(select max(salary) from employees);
-- finding the second highest salary 
select max(salary) from employees where salary<(select max(salary) from employees);
-- third highest
select max(salary) from employees where salary<(select max(salary) from employees where salary<(select max(salary) from employees));
                
 
 
 
 
 
 
 

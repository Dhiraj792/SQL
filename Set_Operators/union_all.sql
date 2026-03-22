-- UNION ALL:-it allow duplicate
select * from t1
union all 
select * from t2;
use classicmodels;
select * from employees;
select * from customers;

select firstName from employees
union
select contactFirstName from customers;

select firstName from employees
union all
select cantaccontactFirstName from customers;
select concat(firstName," ",lastName) full_name from employees
union all
select concat(contactFirstName," ",contactLastName) from customers;
-- DISTINCT clause- To fetch unique values from table 
-- DISTINCT clause- To remove duplicates values 
USE classicmodels;
select * from employees;
select lastName from employees order by lastName;
select distinct lastName from employees order by lastName;
select * from customers;
select state from customers;
select distinct state from customers;
select distinct state,city from customers where state is not null;


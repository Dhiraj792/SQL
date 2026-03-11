-- how order by is treated null values
USE classicmodels;
select * from employees;
select firstName,lastName,reportsTo from employees order by reportsTo;
select firstName,lastName,reportsTo from employees order by reportsTo desc;
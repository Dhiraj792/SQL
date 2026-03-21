-- GROUP BY clause is udef to collect data from multiple records and group the result and group the result by one or more column
/*
Syntax
SELECT column_name(s)
from table_name
where condition 
group by column_name(s)
order by column_name(s);
*/
create database hrdatabase;
use hrdatabase;
select * from employees;
describe employees;
-- We are finding out how many employees belong to a particular department
select department_id from employees;
select department_id,count(*) from employees group by department_id;
select * from employees where department_id=5;
select  department_id ,sum(salary) from employees group by department_id ;
select  department_id ,sum(salary) tsalary from employees group by department_id order by tsalary desc;
select department_id,min(salary) min,max(salary) max from employees group by department_id order by min,max desc;
-- GROUP BY on multiple columns
select job_id,department_id from employees group by job_id,department_id;
select job_id,department_id,count(*) from employees group by job_id,department_id;
select * from employees where job_id=7 and department_id=10;
















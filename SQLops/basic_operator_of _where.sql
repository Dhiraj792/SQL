create database employees;
use employees;
describe employees;
select * from employees;
select emp_no,first_name from employees;
select emp_no ENo,first_name FName from employees;
select * from salaries;
select * from salaries where salary>70000;
select emp_no,salary from salaries;
select emp_no,salary+10000 from salaries;
select * from salaries where salary between 70000 and 80000;
select * from salaries where salary<80000;




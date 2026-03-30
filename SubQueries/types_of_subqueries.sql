-- types of subquery
-- single row sub query(<=,>=,!=)
-- multi row subquery(IN,ANY,ALL)
-- single row
use hrdatabase;
select first_name,last_name,salary from employees where salary=(select max(salary) from employees);
-- multi row
use classicmodels;
-- find the customer who have not placed any orders
select 
	customername
from 
	customers
where
	customernumber not in (select distinct
							customernumber
						from
                        orders);
                        
                        
select distinct customernumber from orders ;
-- query to get first name,lastname department id and department name
select first_name,last_name,department_id,(select department_name from departments where employees.department_id=department_id) department_name                     from employees;













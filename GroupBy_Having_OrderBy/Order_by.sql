-- order by
select * from employees order by salary desc;    
select  department_id,sum(salary) tsalary from employees group by department_id order by tsalary desc;
select department_id,sum(salary) tsalary from employees 
		where department_id <> 6 
				group by department_id having tsalary>20000
					order by tsalary desc;                
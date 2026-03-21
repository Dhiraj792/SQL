-- Having clause 
select * from employees;
select job_id,sum(salary) salary from employees group by job_id ;
select job_id from employees group by job_id;
select count(job_id) from employees;
select job_id,count(*) from employees group by job_id;
select job_id,count(*) count from employees group by job_id having count>2;
select job_id,sum(salary) salary from employees group by job_id having salary>10000;
select department_id,sum(salary) from employees where department_id <>6 group by department_id;
                    




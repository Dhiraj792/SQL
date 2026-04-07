-- Constraints-Rule that allows or restricts what values/data will be stored in the table
-- not null
use d;
create table students(roll int not null,first_name varchar(20) not null,last_name varchar(20) not null,marks int);
insert into students values(1, "dhiraj","badre",80);
insert into students values(null,"prashant","kolhe",40); -- we cant insert null value
insert into students values(2,"prashant","kolhe",40);


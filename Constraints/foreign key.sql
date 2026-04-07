-- foreign key:- use to link two table together
use d;
create table departments( departmentid int primary key,departmentname varchar(20));
create table employees(employeeid int primary key,
			employeename varchar(20),
			departmentid int,
			foreign key(departmentid) references departments(departmentid));
insert into departments values(1,"IT"),(2,"HR"),(3,"payroll"),(4,"admin");
select * from departments;
insert into employees values(1,"mark",1),
			(2,"john",1),
            (3,"mike",2),
            (4,"marry",3);
select * from employees;
insert into employees values(5,"ramu",7); -- not allowed dept 7 does not exist
delete from departments where departmentid=1;
delete from departments where departmentid=4;-- this run because in department 4 no one is working in employee table;
insert into employees values(6,"ramu",null);
-- on delete cascade
create table departments2( departmentid int primary key,departmentname varchar(20)); -- parent table
create table employees2(employeeid int primary key,
			employeename varchar(20),
			departmentid int,
			foreign key(departmentid) references departments2(departmentid) on delete cascade);-- child table
insert into departments2 values(1,"IT"),(2,"HR"),(3,"payroll"),(4,"admin");
insert into employees2 values(1,"mark",1),
			(2,"john",1),
            (3,"mike",2),
            (4,"marry",3);
select * from employees2;
select * from departments2;  
delete from departments2 where departmentid=1;
-- on update cascad
create table departments3( departmentid int primary key,departmentname varchar(20)); -- parent table
create table employees3(employeeid int primary key,
			employeename varchar(20),
			departmentid int,
			foreign key(departmentid) references departments3(departmentid) on delete cascade on update cascade);-- child table
insert into departments3 values(1,"IT"),(2,"HR"),(3,"payroll"),(4,"admin");
insert into employees3 values(1,"mark",1),
			(2,"john",1),
            (3,"mike",2),
            (4,"marry",3);
select * from employees3;
select * from departments3;  
update departments3 set departmentid=5 where departmentname='IT';



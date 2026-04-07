-- check:-ensure that the inserted value in a column must be satisfied with given condition

create table departments4( departmentid int primary key,departmentname varchar(20));
create table employees4(employeeid int primary key,
			employeename varchar(20),
			departmentid int,
			foreign key(departmentid) references departments4(departmentid) on delete cascade on update cascade,
            salary int check(salary between 5000 and 50000)
            );

insert into departments4 values(1,"IT"),(2,"HR"),(3,"payroll"),(4,"admin");
insert into employees4 values(1,"mark",1,5000),
			(2,"john",1,9000),
            (3,"mike",2,14000),
            (4,"marry",3,50000);
select * from employees4;
select * from departments4;
insert into employees4 values(1,"mark",1,70000);-- out of contrain
alter table employees4
add gender varchar(20) check (gender in ('Male','Female'));
update employees4 set gender='Male' where employeename="mark";
 -- default contrain
 create table orders(
	id int not null,
    ordernumber int not null,
    orderdate date default(current_date())
 );
insert into orders(id,ordernumber,orderdate) values(1,001,'2026-04-07');
insert into orders(id,ordernumber) values(2,002);
select * from orders;

alter table employees4
add emp_status varchar(20) default "not joined";
select * from employees4;




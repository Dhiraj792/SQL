use d;
create table employee(
id int auto_increment primary key,
name varchar(255) not null,
email varchar(320) not null
);
select * from employee;
insert into employee(name,email)
values('john doe','john.doe@gmail.com');
insert into employee(name,email)
values('dhiraj badre','dhirajbadre@gmail.com');
insert into employee(name,email)
values('nayan nayna','nayan@gmail.com');
delete from employee where id=2;
 alter table employee auto_increment=100;
 insert into employee(name,email)
values('pradnya badre','pradnyabadre@gmail.com');
insert into employee(name,email)
values('pramod badre','pramodbadre@gmail.com');

select * from employee;





-- auto increment
create table orders2(
	id int primary key auto_increment,
    ordernumber int not null,
    orderdate date default(current_date())
 );
insert into orders2(ordernumber) values(001);
insert into orders2(ordernumber) values(002);
select * from orders2;
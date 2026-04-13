alter table studentTable ADD DOA datetime default current_timestamp;
insert into studentTable(Name,DOB,Age,remark) values('Anil','2003-10-21',23,'Coming from good school');
alter table studentTable modify remark varchar(100);
alter table studentTable modify Name varchar(5); -- error because of data is more than 5 character
select * from studentTable; 










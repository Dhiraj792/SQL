-- primary key(unique + not null)
create table student4(roll int primary key,
		Fname varchar(20),
		Lname varchar(20),
		marks int
);
   
select * from student4;
insert into student4 values(1,"mahesh","ranna",85);
insert into student4 values(null,"mahesh","ranna",85); -- not allowed
insert into student4 values(1,"ramesh","sadhu",85);-- not allowed
insert into student4 values(78,"ramesh","sadhu",85);-- allowed
/* composite key:-combination of two or more than two colomns in table that allows us to 
identify each row of the table uniquely*/
create table student5(roll int, 
		Fname varchar(20),
		Lname varchar(20),
        mobile_no int(10),
		marks int,
        primary key(roll,mobile_no)
);
select * from student5;
-- in this combination of roll and mobile_no is must be unique 
alter table student5 modify mobile_no varchar(15);
insert into student5 values(1,"mahesh","ranna","8796546234",85);
insert into student5 values(1,"mahesh","ranna","8796546234",85);-- not allowed 
insert into student5 values(2,"mahesh","ranna","8796546234",85);-- unique combination




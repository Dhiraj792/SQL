-- unique
use d;
create table student3(roll int unique,
		Fname varchar(20) unique,
		Lname varchar(20) unique,
		marks int
);-- column level
create table student2(roll int,
		Fname varchar(20) ,
		Lname varchar(20),
		marks int,
        unique(roll,Fname)
); -- in this table only the value is not inserted which have not unique combination of roll and fname
insert into student2 values(1,"madhura","maddi",78);
select * from student2;
describe student2;
insert into student2 values(1,"piyush","dooo",78);
-- now trying to insert in column 3
insert into student3 values(1,"madhura","maddi",78);
insert into student3 values(1,"piyush","dooo",78);
insert into student3 values(3,"ram",null,78); 
insert into student3 values(null,"radha","sham",78);-- null duplicate is allowed    
select * from student3;












                   
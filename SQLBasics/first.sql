create database if not exists practice;
use practice;
create table employee(Name varchar(20),Email varchar(100),DOB date);
create table student(SNO int(5), SName varchar(15),marks int(3));
describe student;
insert into student values(1,"amit",45);
select * from student;    
insert into student(SNO,SName,marks)values(2,"dhiraj",87);   
insert into student(SName,SNO,marks)values("mahesh",3,90);   
insert into student(SName,SNO,marks)values("magesh",4,null); 
                     
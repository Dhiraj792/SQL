create database D;
drop database D;
use d;
create table student(roll int(2),Name varchar(32),email varchar(100));
describe student;
create table student2(roll int(2),Name varchar(32),email varchar(100) not null);
drop table student2;
drop table student;
create table studentTable(ID int auto_increment primary key,Name varchar(20) not null,DOB date not null,Age tinyint,remark text,createdat timestamp default current_timestamp);
describe studentTable;








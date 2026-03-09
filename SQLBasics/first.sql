/*
SQL Database Practice – Employee & Student Tables

In this SQL practice, I performed basic database and table operations to understand how data is stored and managed in a relational database.

Steps performed:

Created a database named practice if it does not already exist.

Selected the database using the USE statement.

Created two tables:

employee table with fields:

Name

Email

DOB

student table with fields:

SNO (Student Number)

SName (Student Name)

marks

Displayed the table structure using the DESCRIBE command.

Inserted multiple records into the student table using different column orders.

Inserted a record with NULL marks to demonstrate how missing values can be stored.

Retrieved data from the student table using the SELECT statement.

This exercise helped practice fundamental SQL concepts such as database creation, table creation, inserting records, handling NULL values, and retrieving data.
*/

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
                     

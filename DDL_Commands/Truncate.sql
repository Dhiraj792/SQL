truncate table studentTable; -- delete only rows from table the stucture is not delete we can add more rows in it
describe studentTable;
select * from studentTable;
drop table studentTable;
INSERT INTO studentTable(FirstName,DateOfBirth,Age,remark) VALUES
('Rahul','2004-03-12',21,'Very hardworking student'),
('Priya','2005-07-22',20,'Excellent performance in academics'),
('Amit','2003-11-05',22,'Good leadership qualities'),
('Sneha','2004-01-18',21,'Active in extracurricular activities'),
('Rohit','2005-09-30',20,'Quick learner and creative thinker');
                     
INSERT INTO studentTable(FirstName,DateOfBirth,Age,remark) VALUES
('Rahul','2004-03-12',21,'Very hardworking student'),
('Priya','2005-07-22',20,'Excellent performance in academics'),
('Amit','2003-11-05',22,'Good leadership qualities'),
('Sneha','2004-01-18',21,'Active in extracurricular activities'),
('Rohit','2005-09-30',20,'Quick learner and creative thinker');
set autocommit =off;
delete from studentTable;  -- DML command in this not permanent we can execute rollback operation
rollback ; 
truncate table studentTable; -- DDl command int this changers are permanent
rollback;
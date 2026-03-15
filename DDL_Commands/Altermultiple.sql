select * from studentTable; 
use d;
alter table studentTable change Name FirstName varchar(20);
describe studentTable;                              
alter table studentTable change DOB DateOfBirth Date after createdat;
alter table studentTable rename column DOA to DateOfAdmission ;
-- multiple column modification
alter table studentTable modify remark text,modify FirstName text;
-- Drop column
alter table studentTable drop column DateOfAdmission;                            
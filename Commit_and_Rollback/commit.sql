-- TCL:- Trasaction Control Language Commands
use d;
select * from employee;
insert into employee (name,email) values("pramod Badre","pramodbadre@gmail.com");
delete from employee where id=101;
set autocommit=off;
insert into employee (name,email) values("ramdas badre","ramdasbadre@gmail.com");
-- if we close this sql file or window then the inserted record is not 
-- visible because autocommit is off
-- to save chnages that we made we want to run commit command
commit;





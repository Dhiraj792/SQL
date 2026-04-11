-- rollback:cancel changes
use d;
select * from employee;
set autocommit=off;
delete from employee where id=1;
rollback;
-- changes are remove  
-- if we commit the changes then after that we cant run rollback changes will not be reverse back
delete from employee where id=103;
commit;
rollback; -- not make any chnages because commit is run already and changes become permanente
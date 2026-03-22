-- Intersect:- returns the common rows
select concat(firstName," ",lastName) full_name from employees
intersect
select concat(contactFirstName," ",contactLastName) from customers;
-- not work in workbench go to sql shell and execut folllowing command
/*
1)\connect root@localhost
2) SHOW DATABASES;
 Database           |
+--------------------+
| classicmodels      |
| college            |
| d                  |
| demodb             |
| employees          |
| employees1         |
| harryjoins         |
| hrdatabase         |
| information_schema |
| joint              |
| me                 |
| mysql              |
| org_db             |
| performance_schema |
| practice           |
| sakila             |
| schooldb           |
| sys                |
| testdb             |
| world              |
+--------------------
3)USE demodb
 show tables
 +------------------+
| Tables_in_demodb |
+------------------+
| emptable         |
| students         |
| t1               |
| t2               |
-------------------
4)select * from t1 intersect select * from t2;
+----+
| id |
+----+
|  2 |
|  3 |
+----+
5)use classicmodels
6)select firstName from employees intersect select contactFirstName from customers;
| firstName |
+-----------+
| Mary      |
| Jeff      |
| William   |
| Leslie    |
| Julie     |
| Steve     |
| Peter     |
+-----------+
7)select firstName from employees intersect all select contactFirstName from customers ;

+-----------+
| firstName |
+-----------+
| Mary      |
| Jeff      |
| William   |
| Leslie    |
| Leslie    |
| Julie     |
| Steve     |
| Peter     |
+-----------+









*/

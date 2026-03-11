USE classicmodels;
select * from customers;
select * from customers order by contactLastName;
select * from customers order by contactLastName desc ;
select * from customers order by contactFirstName asc, contactLastName desc ;
select contactFirstName first_name,contactLastName Last_name from customers order by contactFirstName asc, contactLastName desc ;

use classicmodels;
select * from customers;
select 
   customerName 
   CName,
   country 
from 
    customers
 where 
    country='USA' or country='France';
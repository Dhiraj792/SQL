use classicmodels;
select 
    customerName CName,
    country,
    state
from 
   customers
where 
   country='USA' and
    state='CA';
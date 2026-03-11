USE classicmodels;
-- order by use in calculation way
select * from orderdetails;
select orderNumber,orderLineNumber,quantityOrdered*priceEach from orderdetails ;
select orderNumber orderno,orderLineNumber orderlineno,quantityOrdered*priceEach total_amount from orderdetails order by quantityOrdered*priceEach;

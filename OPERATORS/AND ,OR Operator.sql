select 
	customerName,
	country,
    creditLimit
from
	customers
where(country='USA'
		or country='France')
        and creditLimit>100000;
select 
	customerName,
	country,
	creditLimit
from 
	customers
where creditLimit between 70000 and 85000;

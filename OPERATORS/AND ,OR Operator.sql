select 
	customerName,
	country,
    creditLimit
from
	customers
where(country='USA'
		or country='France')
        and creditLimit>100000;
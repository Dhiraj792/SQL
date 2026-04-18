-- same like OR operator but here we pass list of required feilds
select 
	customerName,
    country
from
	customers
where country 
	in ('USA','France');

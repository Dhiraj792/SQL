  use d;
  select * from t1 right join t2 on t1.num=t2.num;
  use classicmodels;
  select employeeNumber customerName,cumstomerNumber from customer right join employees on 
  salesRepEmployeeNumber=employeeNumber
  where customerNumber is null;  
  
  
-- DATE/TIME FUNCTION
select curdate();
-- DATEDIFF--number of days between two dates
select datediff('2023-09-25','2023-09-14');
select * from orders;
select datediff(requiredDate,shippedDate) days_required from orders;
select datediff(requiredDate,shippedDate) days_required from orders where status='Shipped' order by days_required desc;
-- NOW
select now();
-- MONTH
select month('2026-03-19');
-- TIMEDIFF
select timediff('10:00:00','8:22:00');
-- DAY
select day('2026-03-19');
select day(orderdate ) Day,orderdate from orders;
-- WEEK
select WEEK('2026-03-19');
-- YEAR
select year('2026-03-19');
select year(orderdate),orderdate from orders;
select year(now());

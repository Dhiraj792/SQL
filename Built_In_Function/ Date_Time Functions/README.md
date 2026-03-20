# SQL Practice – Date & Time Functions (MySQL)

This file contains SQL queries demonstrating the use of **Date and Time functions** in MySQL using the **ClassicModels database**.
These functions are useful for handling, analyzing, and manipulating date and time data.

---

# Topics Covered

## 1. CURDATE() Function

Returns the current system date.

Example:

```sql
select curdate();
```

---

## 2. DATEDIFF() Function

Returns the number of days between two dates.

Example:

```sql
select datediff('2023-09-25','2023-09-14');
```

Using table data:

```sql
select datediff(requiredDate, shippedDate) as days_required
from orders;
```

Filtering shipped orders:

```sql
select datediff(requiredDate, shippedDate) as days_required
from orders
where status = 'Shipped'
order by days_required desc;
```

Explanation:

* Helps calculate delivery delays or durations between dates

---

## 3. NOW() Function

Returns the current date and time.

Example:

```sql
select now();
```

---

## 4. MONTH() Function

Extracts the month from a date.

Example:

```sql
select month('2026-03-19');
```

---

## 5. TIMEDIFF() Function

Returns the difference between two time values.

Example:

```sql
select timediff('10:00:00','8:22:00');
```

---

## 6. DAY() Function

Extracts the day from a date.

Example:

```sql
select day('2026-03-19');
```

Using table:

```sql
select day(orderdate) as Day, orderdate from orders;
```

---

## 7. WEEK() Function

Returns the week number of a date.

Example:

```sql
select week('2026-03-19');
```

---

## 8. YEAR() Function

Extracts the year from a date.

Example:

```sql
select year('2026-03-19');
```

Using table:

```sql
select year(orderdate), orderdate from orders;
```

Current year:

```sql
select year(now());
```

---

# Database Used

* ClassicModels Database

Tables used:

* `orders`

---

# Concepts Practiced

* Current date and time retrieval
* Date difference calculation
* Extracting day, month, and year
* Time difference calculation
* Sorting based on date differences

---

# Tools Used

* MySQL
* ClassicModels Sample Database
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Work with date and time values in SQL
* Calculate differences between dates
* Extract specific parts of dates (day, month, year)
* Analyze time-based data
* Write queries for real-world scenarios like delivery tracking

---

⭐ Next Topics to Learn:

* Aggregate Functions (SUM, AVG, COUNT)
* GROUP BY & HAVING
* JOIN Operations
* Subqueries
* Indexing

# SQL Practice – JOINS (MySQL)

This file contains SQL queries demonstrating the use of **JOIN operations** in SQL.
Joins are used to **retrieve data from multiple tables** based on a related column.

---

# Topics Covered

## What is JOIN?

A `JOIN` is used with a `SELECT` statement to combine rows from two or more tables.

---

# 1. INNER JOIN

The `INNER JOIN` returns only the **matched records** from both tables.

---

## Example 1: Basic INNER JOIN

```sql
use d;

create table t1(num int);
create table t2(num int);

insert into t1 values(10),(11),(12),(14);
insert into t2 values(11),(12),(12),(15);

select * 
from t1 
inner join t2 
on t1.num = t2.num;
```

### Explanation:

* Returns only common values: **11, 12**
* Duplicate values are also shown

---

## Example 2: INNER JOIN with HR Database

```sql
use hrdatabase;

select * 
from employees 
inner join departments 
on employees.department_id = departments.department_id;
```

### Explanation:

* Combines employee data with department details

---

## Example 3: INNER JOIN (ClassicModels)

```sql
use classicmodels;

select productcode, productname, textdescription
from products
inner join productlines
on products.productline = productlines.productline;
```

---

## INNER JOIN using USING()

```sql
select productcode, productname, textdescription
from products
inner join productlines
using(productline);
```

### Explanation:

* `USING()` is used when both tables have the same column name

---

# 2. LEFT JOIN

The `LEFT JOIN` returns:

* All records from the **left table**
* Matched records from the right table
* If no match → returns NULL

---

## Example 1: Basic LEFT JOIN

```sql
use d;

select * 
from t1 
left join t2 
on t1.num = t2.num;
```

### Explanation:

* Shows all values from `t1`
* If no match in `t2`, result will contain NULL

---

## Example 2: LEFT JOIN (ClassicModels)

```sql
use classicmodels;

select * 
from customers t1 
left join orders t2 
on t1.customerNumber = t2.customerNumber;
```

### Explanation:

* Shows all customers
* Even if they have not placed any orders

---

# Concepts Practiced

* INNER JOIN
* LEFT JOIN
* Joining multiple tables
* Using `ON` clause
* Using `USING()` clause
* Handling duplicate values
* Handling NULL values

---

# Database Used

* `d` (custom database)
* `hrdatabase`
* `classicmodels`

Tables used:

* `t1`, `t2`
* `employees`, `departments`
* `products`, `productlines`
* `customers`, `orders`

---

# Tools Used

* MySQL Workbench / Command Line
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Combine data from multiple tables
* Understand relationships between tables
* Use INNER JOIN for matching data
* Use LEFT JOIN for complete data retrieval
* Handle NULL values in joins

---

# Important Notes

* INNER JOIN → Only matched records
* LEFT JOIN → All left + matched right
* USING() → Used when column names are same

---

⭐ Next Topics to Learn:

* RIGHT JOIN
* FULL OUTER JOIN (via UNION)
* SELF JOIN
* Subqueries
* Window Functions


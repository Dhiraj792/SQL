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

# SQL Practice – Advanced JOINS (RIGHT JOIN, CROSS JOIN, FULL JOIN)

This file continues the **JOIN concepts** in SQL, covering:

* RIGHT JOIN
* CROSS JOIN
* FULL OUTER JOIN (concept)

These joins are important for **data analysis and interviews**.

---

# 1. RIGHT JOIN

The `RIGHT JOIN` returns:

* All records from the **right table**
* Matched records from the left table
* If no match → returns `NULL` for left table

---

## Example 1: Basic RIGHT JOIN

```sql
use d;

select * 
from t1 
right join t2 
on t1.num = t2.num;
```

### Explanation:

* Shows all values from `t2`
* If no matching value in `t1`, result will contain `NULL`

---

## Example 2: RIGHT JOIN (ClassicModels)

```sql
use classicmodels;

select employeeNumber, customerName, customerNumber
from customers
right join employees 
on salesRepEmployeeNumber = employeeNumber
where customerNumber is null;
```

### Explanation:

* Returns employees who **do not have any customers assigned**
* `customerNumber IS NULL` filters unmatched records

---

# 2. CROSS JOIN

The `CROSS JOIN` returns the **Cartesian product** of two tables.

---

## Example:

```sql
use d;

select * 
from t1 
cross join t2;
```

### Explanation:

* Every row of `t1` is combined with every row of `t2`
* If `t1` has 4 rows and `t2` has 4 rows → result = 16 rows

---

# 3. FULL OUTER JOIN

The `FULL JOIN` returns:

* All records from **both tables**
* Matched records where possible
* Unmatched values filled with `NULL`

---

## ⚠️ Important Note

MySQL **does NOT support FULL OUTER JOIN directly**.
---

# Summary of JOIN Types

| JOIN Type  | Description                  |
| ---------- | ---------------------------- |
| INNER JOIN | Only matched records         |
| LEFT JOIN  | All left + matched right     |
| RIGHT JOIN | All right + matched left     |
| CROSS JOIN | All combinations             |
| FULL JOIN  | All records from both tables |

---

# Concepts Practiced

* RIGHT JOIN usage
* Finding unmatched records
* CROSS JOIN (Cartesian product)
* FULL JOIN concept using UNION
* Filtering NULL values

---

# Database Used

* `d` (custom database)
* `classicmodels`

Tables used:

* `t1`, `t2`
* `employees`
* `customers`

---

# Tools Used

* MySQL Workbench / Command Line
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Use RIGHT JOIN to retrieve all records from right table
* Identify unmatched records using NULL conditions
* Understand CROSS JOIN behavior
* Simulate FULL OUTER JOIN in MySQL
* Work with multi-table queries efficiently

---

⭐ Next Topics to Learn:

* SELF JOIN
* Subqueries




# SQL Practice – Mysqlsampledatabase  Database

This repository contains my SQL practice queries using the **mysqlsampledatabase**.
The purpose of this practice is to understand important SQL concepts used in data querying and database management.
---
# Topics Practiced

## 1. DISTINCT Clause

The `DISTINCT` clause is used to remove duplicate values from query results.
Example:
```sql
USE classicmodels;

select lastName from employees order by lastName;

select distinct lastName from employees order by lastName;
```

Example from customers table:

```sql
select state from customers;

select distinct state from customers;

select distinct state, city 
from customers 
where state is not null;
```
Explanation:

* `DISTINCT` returns only **unique values**
* Useful when a column contains **duplicate data**

---

# 2. ORDER BY Clause

The `ORDER BY` clause is used to sort query results.

Example:

```sql
select lastName from employees order by lastName;
```

By default it sorts in **ascending order**.

Descending order example:

```sql
select firstName, lastName, reportsTo 
from employees 
order by reportsTo desc;
```

---

# 3. ORDER BY with Calculations

We can also sort results based on calculated values.

Example:

```sql
select orderNumber,
orderLineNumber,
quantityOrdered * priceEach
from orderdetails;
```

Using alias and sorting:

```sql
select orderNumber orderno,
orderLineNumber orderlineno,
quantityOrdered * priceEach total_amount
from orderdetails
order by quantityOrdered * priceEach;
```

This calculates the **total amount of each order line** and sorts the results.

---

# 4. Handling NULL Values with ORDER BY

Example:

```sql
select firstName, lastName, reportsTo
from employees
order by reportsTo;
```

Descending order:

```sql
select firstName, lastName, reportsTo
from employees
order by reportsTo desc;
```

Explanation:

* `NULL` values represent **missing or unknown data**
* `ORDER BY` places `NULL` values **first or last depending on sorting order**

---

# Databases Used

* **ClassicModels Database**
* Tables used:

  * `employees`
  * `customers`
  * `orderdetails`

---

# Purpose of This Repository

* Practice SQL queries
* Understand database querying concepts
* Improve SQL skills for technical interviews
* Learn data filtering and sorting techniques

---

# Tools Used

* MySQL
* ClassicModels Sample Database
* GitHub for version control

---

⭐ I will continue adding more SQL topics such as:

* JOIN operations
* GROUP BY
* HAVING
* Subqueries
* Aggregate functions


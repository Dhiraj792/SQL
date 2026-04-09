# SQL Practice – Views & Indexes (MySQL)

This file contains SQL queries demonstrating the use of:

* **Views (Virtual Tables)**
* **Indexes (Performance Optimization)**

These concepts are important for **data abstraction and query performance**.

---

# Topics Covered

## 1. Views

A **View** is a virtual table created from a query.
It does not store data physically but displays data from one or more tables.

---

## Creating a View

```sql id="d2r3lw"
create view emp_view1 as 
select employee_id, first_name, last_name, salary 
from employees;
```

### Usage:

```sql id="p1gl3w"
select * from emp_view1;
```

✔ Simplifies complex queries
✔ Improves readability

---

## Dropping a View

```sql id="cf9c9p"
drop view emp_view1;
```

---

## View on Custom Table

```sql id="a5b7eq"
create view emp_view2 as 
select employeeid, employeename, departmentid 
from employees;
```

### Insert through View:

```sql id="p8l3wq"
insert into emp_view2(employeeid, employeename, departmentid) 
values(6, "Dhiraj", 3);
```

### Explanation:

* Data is inserted into the **original table**
* View acts as a **window to the table**

---

# Important Notes on Views

* Views are **virtual (no physical storage)**
* Changes in base table reflect in view
* Some views allow insert/update (depending on conditions)

---

# 2. Indexes

An **Index** is a special lookup structure that improves the **speed of data retrieval**.

---

## Without Index

```sql id="q3n2mz"
select * from employees where employeename = "Dhiraj";
```

* Slower for large datasets

---

## Creating an Index

```sql id="q9w1kx"
create index emp_index1 on employee(lname);
```

### Explanation:

* Creates index on `lname` column
* Speeds up search operations

---

## Dropping an Index

```sql id="f7v0xy"
drop index emp_index1 on employee;
```

---

# Concepts Practiced

* Creating views
* Using views for data abstraction
* Inserting data through views
* Creating indexes
* Improving query performance
* Dropping views and indexes

---

# Databases Used

* `hrdatabase`
* `d`
* `college`

Tables used:

* `employees`
* `employee`

---

# Tools Used

* MySQL
* MySQL Workbench / CLI
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Create and manage views
* Simplify complex queries using views
* Understand virtual table behavior
* Improve query performance using indexes
* Optimize database operations

---

# Important Notes

* Views = Virtual Tables
* Indexes = Faster Queries
* Indexes improve SELECT performance but may slow INSERT/UPDATE

---

⭐ This is part of my SQL learning journey and will be extended with advanced database optimization techniques.


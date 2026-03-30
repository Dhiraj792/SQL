# SQL Practice – Subqueries (MySQL)

This file contains SQL queries demonstrating the use of **Subqueries** in MySQL.
A subquery is a query **nested inside another query** and is used to perform complex data retrieval operations.

---

# What is a Subquery?

A **subquery** is a query inside another SQL query such as:

* `SELECT`
* `INSERT`
* `UPDATE`
* `DELETE`

---

# Topics Covered

## 1. Basic Subquery

### Example:

```sql
select first_name, last_name, salary 
from employees 
where salary > (
    select salary 
    from employees 
    where first_name = 'michael'
);
```

### Explanation:

* First, the inner query finds **Michael's salary**
* Then, the outer query finds employees earning **more than Michael**

---

## 2. Subquery with Aggregate Function

### Example: Highest Payment

```sql
select 
    customerNumber,
    checkNumber,
    amount
from payments
where amount = (
    select max(amount) from payments
);
```

### Explanation:

* Finds the customer with the **highest payment amount**

---

## 3. Highest Salary

```sql
select first_name, last_name, salary 
from employees 
where salary = (
    select max(salary) from employees
);
```

---

## 4. Second Highest Salary

```sql
select max(salary) 
from employees 
where salary < (
    select max(salary) from employees
);
```

---

## 5. Third Highest Salary

```sql
select max(salary) 
from employees 
where salary < (
    select max(salary) 
    from employees 
    where salary < (
        select max(salary) from employees
    )
);
```

---

# Types of Subqueries

## 6. Single Row Subquery

Returns only **one row**.

Used with:

* `=`
* `>`
* `<`
* `>=`
* `<=`

Example:

```sql
select first_name, last_name, salary 
from employees 
where salary = (
    select max(salary) from employees
);
```

---

## 7. Multi-Row Subquery

Returns **multiple rows**.

Used with:

* `IN`
* `ANY`
* `ALL`

---

### Example: Customers without Orders

```sql
select customerName
from customers
where customerNumber NOT IN (
    select distinct customerNumber 
    from orders
);
```

### Explanation:

* Finds customers who **have not placed any orders**

---

## 8. Subquery in SELECT Clause

Example:

```sql
select 
    first_name,
    last_name,
    department_id,
    (
        select department_name 
        from departments 
        where employees.department_id = department_id
    ) as department_name
from employees;
```

### Explanation:

* Adds **department name** dynamically using subquery

---

# Databases Used

* `hrdatabase`
* `classicmodels`

Tables used:

* `employees`
* `departments`
* `payments`
* `customers`
* `orders`

---

# Concepts Practiced

* Nested queries
* Aggregate functions with subqueries
* Single-row subqueries
* Multi-row subqueries
* Subquery inside SELECT
* Filtering using NOT IN
* Finding highest/second highest values

---

# Tools Used

* MySQL Workbench / Command Line
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Write nested queries
* Use subqueries for complex filtering
* Find highest and nth highest values
* Work with single-row and multi-row subqueries
* Combine multiple tables logically

---

# Important Notes

* Subqueries are executed **first**
* Outer query uses result of inner query
* Avoid using subqueries when JOIN is more efficient (in some cases)

---

⭐ Next Topics to Learn:

* Views
* Indexing
* Stored Procedures
* Triggers


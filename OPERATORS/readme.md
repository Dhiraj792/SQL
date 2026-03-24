# SQL Practice – Logical Operators (ClassicModels Database)

This file contains SQL queries demonstrating the use of **logical operators** and filtering techniques in the **ClassicModels database**.
These operators help retrieve specific data from tables based on conditions.

---
# Topics Covered

## 1. AND Operator
The `AND` operator is used to filter records when **multiple conditions must be true**.

Example:

```sql
select 
    customerName,
    country,
    creditLimit
from customers
where (country='USA' or country='France')
and creditLimit > 100000;
```

Explanation:

* Retrieves customers from **USA or France**
* Only if their **credit limit is greater than 100000**

---

## 2. BETWEEN Operator

The `BETWEEN` operator selects values within a specified range.

Example:

```sql
select 
    customerName,
    country,
    creditLimit
from customers
where creditLimit between 70000 and 85000;
```

Explanation:
* Retrieves customers whose **credit limit is between 70,000 and 85,000**

---

## 3. Filtering Multiple Conditions

Example:

```sql
select 
    customerName CName,
    country,
    state
from customers
where country='USA'
and state='CA';
```

Explanation:

* Returns customers located in **California (CA), USA**

---

## 4. IN Operator

The `IN` operator is used to check multiple values in a column.
It works similarly to multiple `OR` conditions.

Example:

```sql
select 
    customerName,
    country
from customers
where country in ('USA','France');
```

Explanation:

* Retrieves customers from **USA or France**
* Cleaner alternative to multiple `OR` conditions

Equivalent query using `OR`:

```sql
select 
    customerName CName,
    country
from customers
where country='USA'
or country='France';
```

---

## 5. NOT Operator

The `NOT` operator reverses a condition.

Example:

```sql
select * from customers
where NOT creditLimit > 70000;
```

Explanation:

* Retrieves customers whose **credit limit is NOT greater than 70000**

Another example:

```sql
select * from customers
where NOT creditLimit < 60000;
```

Explanation:

* Retrieves customers whose **credit limit is greater than or equal to 60000**

---

# Queries for Credit Limit Filtering

Example queries:

```sql
select * from customers where creditLimit > 70000;

select * from customers where creditLimit < 60000;
```

These queries help filter customers based on **financial limits**.

---

# Database Used

**ClassicModels Sample Database**

Tables used:

* `customers`

---

# Concepts Practiced

This practice demonstrates the use of:

* `AND` operator
* `OR` operator
* `IN` operator
* `NOT` operator
* `BETWEEN` operator
* Column aliasing
* Data filtering using `WHERE`

---

# Tools Used

* MySQL
* ClassicModels Sample Database
* GitHub for version control

---

# Learning Objective

The objective of this practice is to understand how SQL logical operators help in:

* Filtering records
* Query optimization
* Writing readable SQL queries
* Preparing for technical interviews

---

⭐ Future topics to practice:

* LIKE operator
* JOIN operations
* GROUP BY
* HAVING clause
* Subqueries
* Aggregate functions


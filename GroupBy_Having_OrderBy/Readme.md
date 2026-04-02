# SQL Practice – GROUP BY & HAVING Clause (MySQL)

This file contains SQL queries demonstrating the use of **GROUP BY**, **aggregate functions**, and the **HAVING clause** using a sample **HR Database**.

These concepts are very important for **data analysis and interview preparation**.
---

# Topics Covered

## 1. GROUP BY Clause

The `GROUP BY` clause is used to **group rows that have the same values** in specified columns.

### Syntax

```sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
```

---

## 2. Counting Records in Groups

Example:

```sql
select department_id, count(*) 
from employees 
group by department_id;
```

Explanation:

* Counts the number of employees in each department

---

## 3. SUM() with GROUP BY

Example:

```sql
select department_id, sum(salary) 
from employees 
group by department_id;
```

With sorting:

```sql
select department_id, sum(salary) tsalary 
from employees 
group by department_id 
order by tsalary desc;
```

Explanation:

* Calculates total salary of each department
* Sorted from highest to lowest

---

## 4. MIN() and MAX() Functions

Example:

```sql
select department_id,
min(salary) as min_salary,
max(salary) as max_salary
from employees
group by department_id
order by min_salary, max_salary desc;
```

Explanation:

* Finds lowest and highest salary in each department

---

## 5. GROUP BY on Multiple Columns

Example:

```sql
select job_id, department_id 
from employees 
group by job_id, department_id;
```

Counting grouped records:

```sql
select job_id, department_id, count(*) 
from employees 
group by job_id, department_id;
```

Explanation:

* Groups data based on both job role and department

---

## 6. HAVING Clause

The `HAVING` clause is used to **filter grouped data**.

### Difference:

* `WHERE` → filters rows before grouping
* `HAVING` → filters after grouping

---

### Example: Count Filter

```sql
select job_id, count(*) as count
from employees
group by job_id
having count > 2;
```

Explanation:

* Shows job roles having more than 2 employees

---

### Example: Salary Filter

```sql
select job_id, sum(salary) as salary
from employees
group by job_id
having salary > 10000;
```

Explanation:

* Shows job roles where total salary exceeds 10,000

---

## 7. Combining WHERE, GROUP BY, HAVING, ORDER BY

Example:

```sql
select department_id, sum(salary) tsalary
from employees
where department_id <> 6
group by department_id
having tsalary > 20000
order by tsalary desc;
```

Explanation:

* Excludes department 6
* Groups remaining departments
* Filters departments with total salary > 20000
* Sorts results in descending order

---

## 8. ORDER BY Clause

Example:

```sql
select * from employees order by salary desc;
```

Explanation:

* Sorts employees by salary in descending order

---

# Database Used

* HR Database

Tables used:

* `employees`

---

# Concepts Practiced

* GROUP BY clause
* Aggregate functions (`COUNT`, `SUM`, `MIN`, `MAX`)
* HAVING clause
* Filtering grouped data
* Sorting grouped results
* Multi-column grouping

---

# Tools Used

* MySQL
* SQL Command Line / Workbench
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Group data based on columns
* Perform aggregate calculations
* Filter grouped results using HAVING
* Combine multiple SQL clauses in one query
* Analyze structured data efficiently

---

⭐ Next Topics to Learn:

* JOIN operations (VERY IMPORTANT)
* Subqueries


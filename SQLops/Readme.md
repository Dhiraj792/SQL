# SQL Practice – Employees Database
This repository contains my SQL practice queries using the **MySQL Employees Database**.
The purpose of this repository is to practice and understand important SQL concepts used in real-world databases and technical interviews.

## Topics Covered
### 1. Database and Table Operations

* Creating a database
* Using a database
* Viewing table structure using `DESCRIBE`
* Selecting all data from a table

Example:
```sql
create database employees;
use employees;
describe employees;
select * from employees;
```

### 2. Selecting Specific Columns

Retrieving only required columns instead of the whole table.

Example:

```sql
select emp_no, first_name from employees;
```

### 3. Column Aliasing

Using aliases to rename columns in the result.

Example:

```sql
select emp_no ENo, first_name FName from employees;
```

### 4. WHERE Clause

Filtering records based on conditions.

Example:

```sql
select * from salaries where salary > 70000;
select * from salaries where salary < 80000;
```

### 5. Arithmetic Operations

Performing calculations in queries.

Example:

```sql
select emp_no, salary + 10000 from salaries;
```

### 6. BETWEEN Operator

Selecting values within a range.

Example:

```sql
select * from salaries where salary between 70000 and 80000;
```

### 7. LIKE Operator

Used for pattern matching in strings.

Examples:

```sql
select * from employees where first_name like 'e%';
select * from employees where first_name like 'eb%';
select * from employees where first_name like '%en';
select * from employees where last_name like '_a%';
```

Explanation:

* `%` → Represents multiple characters
* `_` → Represents a single character

### 8. IN Operator

Used to filter multiple values in a column.

Example:

```sql
select * from titles where title in ('Staff','Engineer');
```

### 9. IS NULL Operator

Used to find records with NULL values.

Example:

```sql
select * from student where marks is null;
```

## Purpose of this Repository

* Practice SQL queries
* Understand database operations
* Prepare for technical interviews and MNC aptitude tests

## Tools Used

* MySQL
* MySQL Employees Sample Database
* GitHub for version control

---

⭐ This repository will be updated as I continue learning more SQL concepts such as **JOIN, GROUP BY, HAVING, Subqueries, and Indexing.**


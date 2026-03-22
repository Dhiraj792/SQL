# SQL Practice – Set Operations (UNION, UNION ALL, INTERSECT, INTERSECT ALL, EXCEPT, EXCEPT ALL)

This file contains SQL queries demonstrating **Set Operations** in SQL.
These operations are used to combine or compare results from multiple SELECT statements.

---

# Topics Covered

## 1. UNION Operator

The `UNION` operator combines results from multiple queries and **removes duplicate values**.

### Example:

```sql
select * from t1
union
select * from t2;
```

### Tables Used:

```sql
create table t1(id int);
create table t2(id int);

insert into t1 values(1),(2),(3);
insert into t2 values(2),(3),(4);
```

### Output:

```
1
2
3
4
```

---

## 2. UNION ALL Operator

The `UNION ALL` operator combines results and **keeps duplicate values**.

### Example:

```sql
select * from t1
union all
select * from t2;
```

### Output:

```
1
2
3
2
3
4
```

---

## 3. UNION with Different Tables

Example:

```sql
select firstName from employees
union
select contactFirstName from customers;
```

### Using CONCAT:

```sql
select concat(firstName," ",lastName) as full_name from employees
union all
select concat(contactFirstName," ",contactLastName) from customers;
```

---

## 4. INTERSECT Operator

The `INTERSECT` operator returns **common rows between two queries**.

### Example:

```sql
select * from t1
intersect
select * from t2;
```

### Output:

```
2
3
```

### Example with names:

```sql
select firstName from employees
intersect
select contactFirstName from customers;
```

---

## ⚠️ Note (Important)

* `INTERSECT` **does NOT work in MySQL Workbench**
* It works in **MySQL Shell** or other SQL environments

---

## 5. INTERSECT ALL

Returns common rows including duplicates.

```sql
select firstName from employees
intersect all
select contactFirstName from customers;
```

---

## 6. EXCEPT Operator

The `EXCEPT` operator returns rows from the first query that are **not present in the second query**.

### Example:

```sql
select * from t1
except
select * from t2;
```

### Output:

```
1
```

---

## 7. EXCEPT ALL

Returns difference including duplicates.

```sql
select * from t1
except all
select * from t2;
```

---

## ⚠️ Important Notes

* `EXCEPT` is **not supported in MySQL Workbench**
* Must use **MySQL Shell** or other DBMS (like PostgreSQL)

---

# Database Used

* `demodb`
* `classicmodels`

Tables used:

* `t1`, `t2`
* `employees`
* `customers`

---

# Concepts Practiced

* Combining query results
* Removing duplicates
* Keeping duplicates
* Finding common records
* Finding differences between datasets
* Working with multiple tables

---

# Tools Used

* MySQL Workbench
* MySQL Shell
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Combine results using UNION and UNION ALL
* Identify common data using INTERSECT
* Find differences using EXCEPT
* Understand limitations of MySQL tools
* Work with multiple datasets efficiently

---

# Important Tip

Since MySQL Workbench does not support `INTERSECT` and `EXCEPT`, you can achieve similar results using:

* `JOIN`
* `IN`
* `NOT IN`
* `EXISTS`

---

⭐ Next Topics to Learn:

* JOIN operations (VERY IMPORTANT)
* Subqueries
* Window functions
* Indexing
* Views

# SQL Practice – AUTO_INCREMENT & LIMIT (MySQL)

This file contains SQL queries demonstrating the use of:

* `AUTO_INCREMENT`
* `LIMIT` clause

These concepts are important for **handling IDs and controlling query results**.

---

# Topics Covered

## 1. AUTO_INCREMENT

The `AUTO_INCREMENT` keyword is used to automatically generate a unique number for a column (usually a primary key).

---

## Creating Table with AUTO_INCREMENT

```sql
create table employee(
id int auto_increment primary key,
name varchar(255) not null,
email varchar(320) not null
);
```

### Explanation:

* `id` will automatically increase for each new record
* No need to manually insert ID

---

## Inserting Data

```sql
insert into employee(name,email)
values('john doe','john.doe@gmail.com');

insert into employee(name,email)
values('dhiraj badre','dhirajbadre@gmail.com');

insert into employee(name,email)
values('nayan nayna','nayan@gmail.com');
```

---

## Deleting Data

```sql
delete from employee where id=2;
```

### Note:

* Deleted IDs are **not reused automatically**

---

## Changing AUTO_INCREMENT Value

```sql
alter table employee auto_increment=100;
```

### Explanation:

* Next inserted record will start from **100**

---

## More Insertions

```sql
insert into employee(name,email)
values('pradnya badre','pradnyabadre@gmail.com');

insert into employee(name,email)
values('pramod badre','pramodbadre@gmail.com');
```

---

# 2. LIMIT Clause

The `LIMIT` clause is used to **restrict the number of rows returned**.

---

## Example: First 5 Rows

```sql
select * from employees limit 5;
```

✔ Returns first 5 rows

---

## Example: Offset + Limit

```sql
select * from employees limit 2,5;
```

### Explanation:

* Skip first 2 rows
* Return next 5 rows

---

# Databases Used

* `d`
* `hrdatabase`

Tables used:

* `employee`
* `employees`

---

# Concepts Practiced

* Auto-generating IDs
* Managing primary keys
* Handling deleted records
* Controlling query output
* Pagination basics

---

# Tools Used

* MySQL
* MySQL Workbench / CLI
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Use AUTO_INCREMENT for unique IDs
* Modify starting value of auto increment
* Understand behavior after deletion
* Use LIMIT for pagination
* Control result set size efficiently

---

# Important Notes

* AUTO_INCREMENT works only with numeric columns
* Deleted IDs are not reused
* LIMIT is useful for pagination in applications

---

⭐ This is part of my SQL learning journey and will be extended with more advanced concepts.


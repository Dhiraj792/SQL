# SQL Practice – DDL Commands (MySQL)

This repository contains my SQL practice focused on **Data Definition Language (DDL)** and basic database operations using **MySQL**.
The purpose of this practice is to understand how databases and tables are created, modified, and managed.
---
# Topics Covered

## 1. Creating and Deleting a Database
A database is a collection of related tables used to store structured data.

Example:
```sql
create database D;
drop database D;
```
Explanation:

* `CREATE DATABASE` → Creates a new database.
* `DROP DATABASE` → Permanently deletes the database and all its tables.

---

# 2. Selecting a Database

Before working with tables, we must select the database using `USE`.

Example:

```sql
use d;
```

Explanation:

* This command tells MySQL to execute queries inside the selected database.

---

# 3. Creating Tables

Tables store the actual data in rows and columns.

Example:

```sql
create table student(
roll int(2),
Name varchar(32),
email varchar(100)
);
```

Explanation:

* `INT` → Stores integer values
* `VARCHAR` → Stores variable length text

---

# 4. NOT NULL Constraint

This constraint ensures that a column cannot contain NULL values.

Example:

```sql
create table student2(
roll int(2),
Name varchar(32),
email varchar(100) not null
);
```

Explanation:

* `NOT NULL` means every record must contain a value in that column.

---

# 5. Describing Table Structure

The `DESCRIBE` command shows the structure of a table.

Example:

```sql
describe student;
```

It displays:

* Column names
* Data types
* Null constraints
* Keys

---

# 6. Dropping Tables

Used to permanently remove a table from the database.

Example:

```sql
drop table student;
drop table student2;
```

---

# 7. Creating Table with Constraints

Example:

```sql
create table studentTable(
ID int auto_increment primary key,
Name varchar(20) not null,
DOB date not null,
Age tinyint,
remark text,
createdat timestamp default current_timestamp
);
```

Explanation:

| Column    | Description                               |
| --------- | ----------------------------------------- |
| ID        | Automatically generated unique ID         |
| Name      | Student name (cannot be NULL)             |
| DOB       | Date of birth                             |
| Age       | Student age                               |
| remark    | Additional notes                          |
| createdat | Automatically stores record creation time |

Important keywords:

* `AUTO_INCREMENT` → Automatically increases ID value
* `PRIMARY KEY` → Uniquely identifies each row
* `DEFAULT CURRENT_TIMESTAMP` → Stores current time automatically

---

# 8. Inserting Records

Example:

```sql
insert into studentTable(Name,DOB,Age,remark)
values('dhiraj','2005-09-15',20,'it is best product ever i see');
```

Multiple records insertion:

```sql
INSERT INTO studentTable(Name,DOB,Age,remark) VALUES
('Rahul','2004-03-12',21,'Very hardworking student'),
('Priya','2005-07-22',20,'Excellent performance in academics');
```

---

# 9. Viewing Data

Example:

```sql
select * from studentTable;
```

Explanation:

* `SELECT *` retrieves all columns from the table.

---

# 10. ALTER TABLE Command

Used to modify the table structure.

### Rename Column

```sql
alter table studentTable change Name FirstName varchar(20);
```

### Change Column Position

```sql
alter table studentTable change DOB DateOfBirth Date after createdat;
```

### Modify Column Type

```sql
alter table studentTable
modify remark text,
modify FirstName text;
```

### Drop Column

```sql
alter table studentTable drop column DateOfAdmission;
```

---

# 11. TRUNCATE Command

```sql
truncate table studentTable;
```

Explanation:

* Deletes all rows from a table
* Table structure remains
* Cannot be rolled back

---

# 12. DELETE and ROLLBACK

Example:

```sql
set autocommit = off;

delete from studentTable;

rollback;
```

Explanation:

| Command        | Description                |
| -------------- | -------------------------- |
| DELETE         | Removes rows from table    |
| ROLLBACK       | Restores previous state    |
| AUTOCOMMIT OFF | Allows transaction control |

---

# 13. Difference Between DELETE and TRUNCATE

| DELETE                  | TRUNCATE              |
| ----------------------- | --------------------- |
| DML command             | DDL command           |
| Can use WHERE condition | Cannot use WHERE      |
| Can be rolled back      | Cannot be rolled back |
| Slower                  | Faster                |

---

# 14. Renaming Tables

### Using RENAME

```sql
rename table employee to EMPTable;
```

### Using ALTER

```sql
alter table student rename to students;
```

Explanation:

* Both commands change the table name.

---

# Commands Practiced

This practice includes:

* CREATE DATABASE
* DROP DATABASE
* CREATE TABLE
* DROP TABLE
* INSERT
* SELECT
* ALTER TABLE
* DELETE
* TRUNCATE
* RENAME
* ROLLBACK
* TRANSACTION CONTROL

---

# Tools Used

* MySQL
* MySQL Workbench / Command Line
* GitHub for storing practice files

---

# Learning Objective

This practice helps to understand:

* Database structure management
* Table creation and modification
* Data insertion and deletion
* Transaction control
* Basic SQL database administration

---

⭐ Future SQL topics I plan to practice:

* WHERE Clause
* JOIN Operations

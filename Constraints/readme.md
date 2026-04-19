# SQL Practice – Constraints (MySQL)

This repository contains my SQL practice on **Constraints**, which are rules applied to table columns to ensure **data integrity and accuracy**.

---

# What are Constraints?

Constraints are rules that **restrict or define what type of data can be stored** in a table.

They help:

* Maintain data accuracy
* Prevent invalid data entry
* Ensure relationships between tables

---

# Topics Covered
## 1. NOT NULL Constraint

Ensures that a column **cannot store NULL values**.

```sql
create table students(
    roll int not null,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    marks int
);
```

✔ Prevents missing values
❌ NULL insertion is not allowed

---

## 2. UNIQUE Constraint

Ensures all values in a column (or combination of columns) are **unique**.

### Column Level:

```sql
create table student3(
    roll int unique,
    Fname varchar(20) unique,
    Lname varchar(20) unique,
    marks int
);
```

### Table Level (Composite Unique):

```sql
create table student2(
    roll int,
    Fname varchar(20),
    Lname varchar(20),
    marks int,
    unique(roll, Fname)
);
```

✔ Allows NULL duplicates
✔ Prevents duplicate combinations

---

## 3. PRIMARY KEY

Combination of:

* `UNIQUE` + `NOT NULL`

```sql
create table student4(
    roll int primary key,
    Fname varchar(20),
    Lname varchar(20),
    marks int
);
```

✔ Unique identification of each row
❌ No NULL
❌ No duplicates

---

## 4. COMPOSITE PRIMARY KEY

Combination of multiple columns to uniquely identify a row.

```sql
create table student5(
    roll int,
    Fname varchar(20),
    Lname varchar(20),
    mobile_no varchar(15),
    marks int,
    primary key(roll, mobile_no)
);
```

✔ Unique combination required

---

## 5. FOREIGN KEY

Used to **link two tables** (Parent → Child relationship).

```sql
create table departments(
    departmentid int primary key,
    departmentname varchar(20)
);

create table employees(
    employeeid int primary key,
    employeename varchar(20),
    departmentid int,
    foreign key(departmentid) references departments(departmentid)
);
```

✔ Maintains referential integrity
❌ Cannot insert invalid foreign key

---

## 6. ON DELETE CASCADE

Automatically deletes child records when parent record is deleted.

```sql
foreign key(departmentid)
references departments2(departmentid)
on delete cascade
```

---

## 7. ON UPDATE CASCADE

Automatically updates child table when parent table is updated.

```sql
on delete cascade on update cascade
```

---

## 8. CHECK Constraint

Ensures values meet a specific condition.

```sql
salary int check(salary between 5000 and 50000)
```

✔ Restricts invalid values

---

## 9. DEFAULT Constraint

Provides a default value if none is specified.

```sql
orderdate date default(current_date())
```

✔ Automatically assigns value

---

## 10. AUTO_INCREMENT

Automatically increments numeric values.

```sql
create table orders2(
    id int primary key auto_increment,
    ordernumber int not null,
    orderdate date default(current_date())
);
```

✔ No need to manually insert ID

---

# Folder Structure

```id="rt8zqv"
constraints/
│── auto_increment.sql
│── check.sql
│── constraint.sql
│── foreign_key.sql
│── primary_key.sql
│── unique.sql
```

---

# Concepts Practiced

* Data validation
* Data integrity
* Table relationships
* Constraint types
* Default and auto-generated values

---

# Tools Used

* MySQL
* MySQL Workbench / CLI
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Apply constraints to tables
* Prevent invalid data entry
* Design relational databases
* Maintain data integrity
* Work with parent-child table relationships

---

# Important Notes

* PRIMARY KEY = UNIQUE + NOT NULL
* FOREIGN KEY ensures relational consistency
* CHECK restricts value ranges
* DEFAULT provides automatic values
* AUTO_INCREMENT simplifies ID handling

---

⭐ This is part of my SQL learning journey and will be extended with advanced database concepts.


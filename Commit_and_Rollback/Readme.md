# SQL Practice – TCL (Transaction Control Language)

This file contains SQL queries demonstrating the use of **Transaction Control Language (TCL)** commands in MySQL.

TCL commands are used to **manage transactions** in a database.

---

# What is a Transaction?

A **transaction** is a sequence of SQL operations that are executed as a single unit.

Example:

* Insert data
* Update data
* Delete data

These operations can be:

* **Saved (COMMIT)**
* **Cancelled (ROLLBACK)**

---

# Topics Covered

## 1. AUTOCOMMIT

By default, MySQL uses `AUTOCOMMIT = ON`.

### Turning OFF Autocommit:

```sql id="k3m9pw"
set autocommit = off;
```

### Explanation:

* Changes are **not saved automatically**
* You must use `COMMIT` to save changes

---

## 2. COMMIT

The `COMMIT` command is used to **save all changes permanently**.

### Example:

```sql id="2xyqnv"
insert into employee (name,email) 
values("ramdas badre","ramdasbadre@gmail.com");

commit;
```

### Explanation:

* Changes are permanently stored in the database
* Cannot be undone after commit

---

## 3. ROLLBACK

The `ROLLBACK` command is used to **undo changes**.

### Example:

```sql id="q5p9yn"
set autocommit = off;

delete from employee where id = 1;

rollback;
```

### Explanation:

* Cancels the delete operation
* Restores previous data

---

## 4. Example Workflow

```sql id="2y6sxl"
set autocommit = off;

insert into employee (name,email)
values("ramdas badre","ramdasbadre@gmail.com");

-- If not committed, data will not persist

commit;
```

---

## 5. Important Scenario

```sql id="7a6y3g"
delete from employee where id = 103;

commit;

rollback;
```

### Explanation:

* After `COMMIT`, rollback **will not work**
* Changes become permanent

---

# Concepts Practiced

* Transaction management
* Controlling data changes
* Saving changes using COMMIT
* Undoing changes using ROLLBACK
* Understanding autocommit behavior

---

# Database Used

* `d`

Tables used:

* `employee`

---

# Tools Used

* MySQL
* MySQL Workbench / CLI
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Control database transactions
* Safely apply changes
* Undo unwanted operations
* Understand commit vs rollback
* Prevent accidental data loss

---

# Important Notes

* `AUTOCOMMIT = ON` → changes saved automatically
* `AUTOCOMMIT = OFF` → manual control required
* `COMMIT` → permanent changes
* `ROLLBACK` → undo changes (before commit only)

---

⭐ This is part of my SQL learning journey and will be extended with advanced database concepts.


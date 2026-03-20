# SQL Practice – Numeric Functions (MySQL)

This file contains SQL queries demonstrating the use of **numeric (mathematical) functions** in MySQL.
These functions are used to perform calculations and manipulate numeric data.

---

# Topics Covered

## 1. ABS() Function

Returns the **absolute (positive) value** of a number.

Example:

```sql
select abs(-234.654);
```

Output:

```
234.654
```

---

## 2. MOD() Function

Returns the **remainder** of a division.

Example:

```sql
select mod(13,5);
```

Alternative using operator:

```sql
select 13 % 5;
```

Output:

```
3
```

---

## 3. ROUND() Function

Rounds a number to a specified number of decimal places.

Example:

```sql
select round(23.45,1);
select round(1.5555,2);
```

Explanation:

* `round(23.45,1)` → 23.5
* `round(1.5555,2)` → 1.56

---

## 4. TRUNCATE() Function

Truncates (cuts off) a number to a specified number of decimal places **without rounding**.

Example:

```sql
select truncate(1.5555,2);
```

Output:

```
1.55
```

Truncating digits from left:

```sql
select truncate(123421,-2);
```

Output:

```
123400
```

---

## 5. SQRT() Function

Returns the **square root** of a number.

Example:

```sql
select sqrt(24);
```

---

# Concepts Practiced

* Absolute value calculation
* Finding remainder
* Rounding vs truncating numbers
* Square root calculations
* Mathematical operations in SQL

---

# Tools Used

* MySQL
* SQL Command Line / Workbench
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Perform mathematical operations in SQL
* Understand rounding vs truncation
* Use numeric functions for data analysis
* Apply calculations in queries

---

⭐ Next Topics to Learn:
* GROUP BY
* HAVING clause
* JOIN operations
* Subqueries


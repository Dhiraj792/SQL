# SQL Practice – String Functions (MySQL)

This file contains SQL queries demonstrating the use of **string functions** in MySQL using the **ClassicModels database**.
String functions are used to manipulate, format, and analyze text data stored in database tables.

---

# Topics Covered

## 1. LOWER() Function

Converts all characters in a string to lowercase.

Example:

```sql
select lower('ORACLE');
```
Using table data:

```sql
select lower(firstName) from employees;
```

---

## 2. UPPER() Function

Converts all characters in a string to uppercase.

Example:

```sql
select upper(firstName) from employees;
```

---

## 3. TRIM Functions

### LTRIM() – Remove leading spaces

```sql
select ltrim('     good boy');
```

### RTRIM() – Remove trailing spaces

```sql
select rtrim('good boy        ');
select rtrim(firstName) from employees;
```

### TRIM() – Remove spaces or specific characters

```sql
select trim('    ok ok      ');
select trim('t' from 'tttttttttokokttttttttt');
```

---

## 4. CONCAT() Function

Used to combine multiple strings into one.

Example:

```sql
select concat("this"," is"," my"," SQL");
```

Using table data:

```sql
select concat(firstName," ",lastName) from employees;
```

---

## 5. INSTR() Function

Returns the position of the **first occurrence** of a substring in a string.

Example:

```sql
select instr("This is MYSQl","MYSQL");
select instr("This is MYSQl","this");
```

Using table:

```sql
select * from products where instr(productLine,'cars') > 0;
```

---

## 6. LENGTH() Function

Returns the length of a string (in bytes).

Example:

```sql
select length('Dhiraj');
```

Using table:

```sql
select firstName, length(firstName) as length_of_string from employees;
```

---

## 7. LEFT() and RIGHT() Functions

### LEFT() – Extract leftmost characters

```sql
select left("MYSQL LEFT",5);
select left("MYSQL LEFT",100);
```

### RIGHT() – Extract rightmost characters

```sql
select right("MYSQL LEFT",5);
```

---

## 8. REPLACE() Function

Searches and replaces a substring.

Example:

```sql
SELECT REPLACE ("SQL TUTORIAL","SQL","HTML") AS REPLACESTRING;
```

---

## 9. SUBSTRING() Function

Extracts part of a string starting from a specific position.

Syntax:

```sql
SELECT substring(string, start, length);
```

Example:

```sql
select substring("Oracle",1,3);
```

---

# Database Used

* ClassicModels Database

Tables used:

* `employees`
* `products`

---

# Concepts Practiced

* String manipulation
* Data formatting
* Text searching
* Combining columns
* Extracting substrings
* Cleaning unwanted spaces

---

# Tools Used

* MySQL
* ClassicModels Sample Database
* GitHub

---

# Learning Outcome

After completing this practice, I can:

* Convert text into uppercase/lowercase
* Remove unwanted spaces
* Combine multiple columns
* Search substrings inside text
* Extract parts of strings
* Replace text dynamically

---

⭐ Next Topics to Learn:

* Numeric functions
* Date functions
* Aggregate functions
* GROUP BY & HAVING
* JOIN operations

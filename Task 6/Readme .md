# Task 6 – Sales Trend Analysis Using SQL

## Goal
Perform sales trend analysis using SQL to:

- Calculate total revenue  
- Count total unique orders  
- Analyze monthly revenue and order trends  
- Use SQL functions like EXTRACT, SUM, and COUNT(DISTINCT) for time-based aggregation

---

## Dataset
**Table Name:** `online_sales`  

**Columns:**
- `order_id`
- `order_date`
- `amount`
- `product_id`

**Rows Inserted:**
- 18 rows for 2023  
- 6 rows for 2024  

> Note: Dataset was **manually inserted** and queries were executed in **DB Fiddle (online SQL platform)**.

---

## 📌 Operations Used in This Task

In this task, I mainly worked with **time-based aggregation** and  
**sales trend analysis** using the following SQL operations:

### ✔️ 1. EXTRACT()
Pull **year** and **month** from each order date for grouping.

### ✔️ 2. GROUP BY
Grouped sales by year and month to identify patterns.

### ✔️ 3. SUM()
Calculated total revenue and month-wise revenue.

### ✔️ 4. COUNT(DISTINCT)
Counted total unique orders and month-wise unique orders (DISTINCT as per hint).

### ✔️ 5. ORDER BY
Sorted results by month and year, or by revenue/order count when needed.

---

## 📌 Insights from the Analysis

- Sales trends differ month to month across both years.  
- Revenue increases in some months because of more orders.  
- Using DISTINCT avoided duplicate counts.  
- Grouping by year + month clearly shows multi-year trends.  
- Ordering results improves readability and analysis.

---

## 📁 Files Included in the Repository

- **README.md** → full explanation of Task 6  
- **outputs/** → DB Fiddle screenshots of all query results  
- **task6.sql** → all SQL queries used / manual insert statements
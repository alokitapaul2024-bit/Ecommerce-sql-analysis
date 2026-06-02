# Ecommerce-sql-analysis

## 📌 Project Objective
The goal of this project is to extract, analyze, and optimize data from the `classicmodels` relational database using structured SQL queries. This project demonstrates proficiency in relational database management, data filtering, multi-table joins, aggregations, subqueries, and database optimization techniques (Views and Indexes).

## 🛠️ Tools Used
- **Database System:** MySQL
- **Language:** SQL

---

## 📂 Database Architecture & Schema
The project utilizes the `classicmodels` database, which simulates a retail company's operations. The core tables analyzed include:
- `customers`: Client data and credit limits.
- `employees` & `offices`: Corporate hierarchy and physical office locations.
- `products` & `productlines`: Inventory, product categorization, and pricing.
- `orders` & `orderdetails`: Sales logs and specific line-item breakdowns.
- `payments`: Customer financial transactions.

---

## 💻 SQL Key Implementations & Queries

### 1. Data Filtering & Sorting (`SELECT`, `WHERE`, `ORDER BY`)
* **Scenario:** Extract all 'Classic Cars' sorted from the highest price to the lowest.

### 2. Multi-Table Joins (INNER JOIN, LEFT JOIN, RIGHT JOIN)
* **Inner Join:** Merging orders with customer details to view account-associated purchases.
* **Left Join:** Displaying all customers and their transactions, including those who haven't placed an order yet (handling NULL entries).
* **Right Join:** Listing all company office locations alongside employee assignments, ensuring empty/new offices are tracked.

### 3. Aggregations & Grouping (GROUP BY, SUM, AVG)
* **Scenario:** Calculating the total lifetime financial value contributed by each individual customer account.

### 4.  Advanced Subqueries
* **Scenario:** Dynamically identifying all stock items priced higher than the database-wide average manufacturing cost.

### 5. Creating Views for Business Intelligence
* **Scenario:** To simplify daily reporting, a virtual view was implemented to store complex customer-order join pipelines seamlessly.

### 6. Query Performance Optimization (Indexes)
* **Scenario:** To scale search performance and eliminate costly full-table scans when searching customer profiles by name, a non-clustered B-Tree index was provisioned.

## 📷 Output Screenshots
1. <img width="632" height="747" alt="QUERY1" src="https://github.com/user-attachments/assets/3b11609a-b54a-44c5-bb2b-0f83122fd01c" />

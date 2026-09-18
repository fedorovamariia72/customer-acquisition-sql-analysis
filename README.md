# 📊 Customer Acquisition & Revenue Analysis — SQL Portfolio Project

This project explores customer acquisition channels in an e‑commerce dataset using SQL and SQLite.  
The analysis focuses on identifying which channels bring the most valuable female customers, generate the highest revenue, and encourage repeat purchases.

The dataset does not include marketing spend, so Customer Acquisition Cost (CAC) is not calculated.  
Instead, **revenue per customer** is used as a simple proxy for **LTV**.

---

## 🧩 Business Question

**Which customer acquisition channels bring the most valuable female customers to the online store?**

### Additional Questions

- Which channel attracts the largest number of female customers?  
- Which acquisition channel generates the highest total revenue?  
- Which channel has the highest revenue per female customer?  
- Which channel demonstrates the strongest tendency toward repeat purchases?  
- Are there differences in order quality or order status depending on the acquisition channel among female customers?

---

## 🛠 Tools & Technologies

- **SQL**
- **SQLite**
- **DBeaver**
- **CSV data import**
- **GitHub** for project publication

---

## 📁 Dataset

The project uses two CSV files:

| File | Description |
|------|-------------|
| **customers.csv** | Customer profile data: user ID, gender, age, city, acquisition channel, registration date |
| **orders.csv** | Order data: order ID, order date, purchase amount, order channel, payment method, delivery days, order status |

The SQLite database contains two main tables:

- `customers`
- `orders`

---

## 📂 Repository Structure

---
customer-acquisition-sql-analysis/
│
├── README.md
│
├── data/
│   ├── customers.csv
│   └── orders.csv
│
├── database/
│   └── store_database.sqlite
│
└── sql/
    ├── create_database.sql
    └── query_result.sql


---

## 🔍 Analysis Steps

- Checked data volume, date range, and revenue totals.  
- Created a SQLite database with `customers` and `orders` tables.  
- Joined customer and order data by `user_id`.  
- Calculated customer count, orders, revenue, and average order value by acquisition channel.  
- Calculated revenue per customer as a simple LTV proxy.  
- Analyzed repeat purchase behavior by acquisition channel.  
- Checked monthly acquisition and revenue trends.  
- Compared order status quality across acquisition channels.

---

## 🧠 Key SQL Topics Used

- `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`  
- `JOIN`  
- `CASE WHEN`  
- Aggregations: `COUNT`, `SUM`, `AVG`  
- CTEs: `WITH`  
- Date functions: `strftime`  
- Window functions: `RANK() OVER`

---

## 📌 Project Summary

Women represent the most active customer segment of the online store and dominate across all acquisition channels.  
**Instagram** and **Facebook** are the strongest sources of new female customers, generating the highest volumes of traffic, orders, and revenue.  
**Google Ads** also shows stable conversion and high profitability, making it an effective paid channel.

For retention, **Email** and **Referral** perform best: although they bring fewer new customers, these women are highly loyal, make regular purchases, and generate consistent revenue.

### Strategic Focus

- **Acquisition:** Instagram, Facebook  
- **Retention:** Email, Referral  

---

## 🔧 Recommendations & Next Steps

- Conduct a comparative analysis of customer behavior by gender (men vs. women).  
- Investigate why Email‑acquired customers generate high revenue per user despite lower volume.  
- Analyze whether Instagram can maintain high revenue if acquisition volume changes.  
- Reduce the share of “unknown” acquisition sources by improving tracking accuracy.  
- Add marketing spend data to calculate true CAC and LTV/CAC.  
- Expand the analysis with cohort‑based retention metrics across acquisition channels.

---

## 📄 Files Included

- `sql/create_database.sql` — script to create database tables  
- `sql/query_result.sql` — SQL queries for portfolio analysis  
- `data/customers.csv` — customer data  
- `data/orders.csv` — order data  
- `database/store_database.sqlite` — ready‑to‑use SQLite database  

---

## ⭐ About This Project

This project demonstrates practical SQL skills for real‑world analytics:

- Working with relational data  
- Building analytical queries  
- Evaluating acquisition channels  
- Understanding customer behavior  
- Preparing insights for business decision‑making  

It is part of my growing portfolio in **data analytics**, **BI**, and **SQL‑based research**.

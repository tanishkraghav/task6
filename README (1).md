#Elevate-Labs-Task-6

📊 Sales Trend Analysis Using Aggregations

This project is part of Task 6 under the Data Analyst Internship at Elevate Labs. The objective is to utilize SQL to analyze a sales dataset by extracting month-wise trends in revenue and order volume using aggregate functions like SUM() and COUNT(), along with date extraction techniques.


---

🗂️ Dataset Overview

The dataset includes the following columns:

order_id – Unique identifier for each order

order_date – Date when the order was placed

product_id – Product reference

amount – Revenue generated from the order

product_name – Name of the product

category – Product category



---

🔍 SQL Queries

✅ Query 1: Monthly Revenue and Order Volume

Groups the data by year and month

Uses EXTRACT(MONTH FROM order_date) and EXTRACT(YEAR FROM order_date)

Calculates total revenue using SUM(amount)

Calculates volume using COUNT(DISTINCT order_id)

Uses ORDER BY to sort results in chronological order


🥇 Query 2: Top 3 Months with Highest Revenue

Sorts by total revenue in descending order

Limits output using LIMIT 3


💰 Query 3: Months with Revenue Above ₹10,000

Filters results where SUM(amount) > 10000 using HAVING clause


📈 Query 4: Monthly Revenue Trend

Displays monthly trend of revenue across the dataset period


📆 Query 5: First 6 Months of the Year

Applies a filter to restrict data from January to June

Uses WHERE EXTRACT(MONTH FROM order_date) <= 6



---

📁 Files Included

sales_trend.sql – SQL queries used for the analysis

README.md – Project documentation



---

💡 Key Insights

January recorded the highest revenue across all months

Multiple months exceeded ₹10,000 in revenue

Order volume remained fairly consistent across months

Seasonal spikes and dips indicate potential promotional opportunities



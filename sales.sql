--Creating the 'sales' table
CREATE TABLE sales (
    Transaction_ID INT,
    Order_Date DATE,
    Product_Category VARCHAR(50),
    Product_Name VARCHAR(70),
    Units_Sold INT,
    Unit_Price FLOAT,
    Total_Revenue FLOAT,
    Region VARCHAR(50),
    Payment_Method VARCHAR(50)
);

--View all data in the table
SELECT * FROM sales;


--Query 1: Get Monthly Revenue and Order Volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS total_orders
FROM sales
GROUP BY year, month
ORDER BY year, month;


--Query 2: Top 3 Months with Highest Revenue
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_revenue) AS total_revenue
FROM sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;


--Query 3: Months with Revenue Over ₹10,000
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_revenue) AS total_revenue
FROM sales
GROUP BY year, month
HAVING SUM(total_revenue) > 10000
ORDER BY month, year;


--Query 4: Monthly Total Revenue
SELECT 
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_revenue) AS total_revenue
FROM sales
GROUP BY month
ORDER BY month;


--Query 5: First 6 Months Only
SELECT 
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT transaction_id) AS order_volume,
    SUM(total_revenue) AS total_revenue
FROM sales
WHERE EXTRACT(MONTH FROM order_date) <= 6
GROUP BY month
ORDER BY month;


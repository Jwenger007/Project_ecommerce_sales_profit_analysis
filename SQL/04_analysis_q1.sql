-- Q1: Analyze monthly sales and profit trends over time
-- Purpose: Identify growth patterns and potential seasonality

SELECT
  DATE_TRUNC('month', order_date) AS month,
  SUM(sales)  AS total_sales,
  SUM(profit) AS total_profit
FROM clean.orders
GROUP BY 1
ORDER BY 1;


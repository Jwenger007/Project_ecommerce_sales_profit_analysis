-- Q4: Analyze payment method performance
-- Purpose: Compare order volume, revenue, and profit by payment mode

SELECT
  payment_mode,
  COUNT(*)        AS orders,
  SUM(sales)      AS total_sales,
  SUM(profit)     AS total_profit,
  ROUND(AVG(sales), 2)  AS avg_order_value,
  ROUND(SUM(profit) / NULLIF(SUM(sales),0), 3) AS margin
FROM clean.orders
GROUP BY payment_mode
ORDER BY total_profit DESC;
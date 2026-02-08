-- Q3: Analyze the impact of discounts on sales and profitability
-- Purpose: Identify discount levels that increase sales but reduce profit

SELECT
  CASE
    WHEN discount = 0 THEN '0%'
    WHEN discount BETWEEN 1 AND 5 THEN '1–5%'
    WHEN discount BETWEEN 6 AND 10 THEN '6–10%'
    WHEN discount BETWEEN 11 AND 15 THEN '11–15%'
    ELSE '16–20%'
  END AS discount_bucket,
  COUNT(*)        AS orders,
  SUM(sales)      AS total_sales,
  SUM(profit)     AS total_profit,
  ROUND(SUM(profit) / NULLIF(SUM(sales),0), 3) AS margin
FROM clean.orders
GROUP BY 1
ORDER BY 1;
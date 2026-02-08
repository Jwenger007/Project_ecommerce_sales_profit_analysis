-- Q5: Analyze regional and city-level performance
-- Purpose: Identify high-performing and low-performing regions and cities

-- Regionale Performance
SELECT
  region,
  COUNT(*)        AS orders,
  SUM(sales)      AS total_sales,
  SUM(profit)     AS total_profit,
  ROUND(SUM(profit) / NULLIF(SUM(sales),0), 3) AS margin
FROM clean.orders
GROUP BY region
ORDER BY total_profit DESC;

-- Top 10 Städte nach Profit
SELECT
  city,
  SUM(sales)  AS total_sales,
  SUM(profit) AS total_profit
FROM clean.orders
GROUP BY city
ORDER BY total_profit DESC
LIMIT 10;

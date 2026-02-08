-- Q6: Analyze product quality using volume vs. profitability
-- Purpose: Identify high-volume sub-categories with low profit margins

SELECT
  sub_category,
  SUM(quantity) AS total_quantity,
  SUM(sales)    AS total_sales,
  SUM(profit)   AS total_profit,
  ROUND(SUM(profit) / NULLIF(SUM(sales),0), 3) AS margin
FROM clean.orders
GROUP BY sub_category
ORDER BY total_quantity DESC;
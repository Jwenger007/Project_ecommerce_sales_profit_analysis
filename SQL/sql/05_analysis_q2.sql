-- Q2: Analyze product and category performance
-- Purpose: Compare revenue drivers with actual profit drivers


-- Kategorie-Performance
SELECT
  category,
  SUM(sales)  AS total_sales,
  SUM(profit) AS total_profit,
  ROUND(SUM(profit) / NULLIF(SUM(sales),0), 3) AS margin
FROM clean.orders
GROUP BY category
ORDER BY total_profit DESC;

-- Produkt-Performance (Top 20 nach Profit)
SELECT
  product_name,
  SUM(sales)  AS total_sales,
  SUM(profit) AS total_profit,
  ROUND(SUM(profit) / NULLIF(SUM(sales),0), 3) AS margin
FROM clean.orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 20;
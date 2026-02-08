-- Check auf NULLs
SELECT
  COUNT(*) FILTER (WHERE order_id IS NULL)        AS order_id_nulls,
  COUNT(*) FILTER (WHERE order_date IS NULL)      AS order_date_nulls,
  COUNT(*) FILTER (WHERE sales IS NULL)           AS sales_nulls,
  COUNT(*) FILTER (WHERE profit IS NULL)          AS profit_nulls
FROM clean.orders;

-- Check auf Duplikate
SELECT order_id, COUNT(*)
FROM clean.orders
GROUP BY order_id
HAVING COUNT(*) > 1;

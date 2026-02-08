
--psql: 
\copy raw.orders FROM '\Users\Johan\Documents\Data_Analyst_skills\SQL_Project_(POSTGRESQL)(VS_Code)\project_sql\Project_ecommerce_sales_profit_analysis\Data\raw\Ecommerce_Sales_Data_2024_2025 (CSV-Raw).csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- sql/02_modify_tables.sql
DROP TABLE IF EXISTS clean.orders;
CREATE TABLE clean.orders AS
SELECT * FROM raw.orders;


SELECT COUNT(*) FROM raw.orders;
SELECT COUNT(*) FROM clean.orders;
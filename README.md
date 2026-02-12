# E-Commerce Sales & Profit Analysis (PostgreSQL)

## Overview

This project analyzes e-commerce transaction data to evaluate profitability drivers, discount efficiency, regional performance, and long-term business stability.

The focus is on business interpretation, not just SQL querying.

---

## Dataset

- **Name:** Ecommerce_Sales_Data_2024_2025.csv  
- **Source:** Kaggle  
- **Link:** https://www.kaggle.com/datasets/prince7489/e-commerce-sales  

Note:  
Monetary values appear to be scaled/synthetic.  
Analysis focuses on relative performance, trends, and margin relationships rather than absolute pricing realism.

---

## Tools Used

- PostgreSQL
- psql (data import & export)
- VS Code
- Excel (visualizations)
- Git & GitHub

---

## Project Structure

```
PROJECT_ECOMMERCE_SALES_ANALYSIS/
│
├── charts/
│   ├── Chart 1 (Monthly Total Profit Trend (€)).png
│   └── Chart 2 Impact of Discounts on Profit Margin.png
│
├── Data/raw/
│   └── Ecommerce_Sales_Data_2024_2025.csv
│
├── SQL/
│   ├── 01_create_tables.sql
│   ├── 02_modify_tables.sql
│   ├── 03_cleaning.sql
│   ├── 04_analysis_q1.sql
│   ├── 05_analysis_q2.sql
│   ├── 06_analysis_q3.sql
│   ├── 07_analysis_q4.sql
│   ├── 08_analysis_q5.sql
│   └── 09_analysis_q6.sql
```

Structured workflow:

- raw.orders → initial import  
- clean.orders → validated dataset  
- Business-question-driven SQL analysis  

---

# Business Questions & Insights

---

## Q1 – Monthly Profit Trend

**Highest Monthly Profit:** €3,979,356.67 (May 2025)  
**Lowest Full Month:** ~€2.94M  
**Average Monthly Profit:** ~€3.31M  

### Insight
Profit remains highly stable between €3.0M and €3.8M across most months, indicating consistent operational performance without strong seasonal volatility.

The final month shows a drop due to being a partial month.

![alt text](<charts/Chart 1 (Monthly Total Profit Trend (€)).png>)
---

## Q2 – Category & Product Performance

Revenue concentration exists across categories, but profitability is more selectively distributed among top-performing products.

### Insight
High revenue does not automatically translate into high profit contribution — margin evaluation is critical for portfolio optimization.

---

## Q3 – Discount Strategy Impact

| Discount | Margin |
|----------|--------|
| 0%       | 14.7%  |
| 1–5%     | 15.2%  |
| 6–10%    | 15.0%  |
| 11–15%   | 15.0%  |
| 16–20%   | 14.7%  |

### Insight
Low discount levels (1–5%) slightly improve margin performance.  
Higher discount levels reduce margin back to baseline levels (14.7%).

Aggressive discounting does not increase profitability.

![alt text](<charts/Chart 2 Impact of Discounts on Profit Margin.png>)
---

## Q4 – Payment Method Performance

Profit distribution across payment methods is relatively balanced.  
No payment method creates a disproportionate margin advantage.

### Insight
Payment method optimization likely affects user experience more than profitability.

---

## Q5 – Regional Performance

### Most Profitable Region:
**North – €21,343,004.33 total profit**

Margin comparison:
- East: 15.1% (highest margin)
- North: 14.9%
- West: 14.9%
- South: 14.8%

### Top Performing Cities (by profit):
1. Lucknow – €4,523,681  
2. Guwahati – €4,487,271  
3. Bangalore – €4,416,915  

### Insight
Regional profit concentration suggests potential for targeted marketing or expansion strategies in top-performing areas.

---

## Q6 – Volume vs Profitability

Margin across sub-categories remains within a narrow band (~14–16%).  
No extreme underperforming segment identified.

### Insight
The product portfolio is broadly balanced with no major margin leakage.

---

# Visualizations

Included Charts:

1. Monthly Total Profit Trend  
2. Impact of Discounts on Profit Margin  

Charts focus on decision-relevant insights rather than decorative visuals.

---

# Conclusion

This project demonstrates:

- Structured database design
- Business-oriented SQL analysis
- Margin-driven evaluation
- Profit stability assessment
- Strategic interpretation of discount and regional performance

The emphasis is on decision-support analysis, not just technical querying.

---

# Author

Johannes Wenger  
Data Analysis & Business Intelligence

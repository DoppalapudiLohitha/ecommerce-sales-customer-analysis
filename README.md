# E-Commerce Sales & Customer Analysis

End-to-end analysis of 96K+ delivered orders from the Olist Brazilian e-commerce dataset, using Python (pandas) for cleaning, analysis and RFM segmentation, and Power BI for the dashboard.

├── sql/         MySQL analysis queries
├── outputs/     dashboard screenshot

## Business Questions
- Which products, categories and states drive revenue?
- How do sales change over time?
- Who are the most valuable customers, and how many come back?

## Tools
Python (pandas, numpy, matplotlib, seaborn), MySQL, Jupyter Notebook, Power BI Desktop

## Dataset
[Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) (9 tables, orders from 2016 to 2018).

## Process
1. Loaded and explored 9 tables
2. Cleaned data: converted dates, kept delivered orders, handled missing categories
3. Joined orders, items, products and customers into one master table
4. Analysed sales by month, category and state
5. Segmented customers with RFM scoring
6. Built an interactive Power BI dashboard

## Key Insights
- Total revenue of about **$13.2M** from **96,470** orders and **93,350** customers (average order value **$137.04**).
- Revenue grew steadily from late 2016 and peaked in **Nov 2017**, then stayed stable through 2018.
- **health_beauty**, **watches_gifts** and **bed_bath_table** are the top categories by revenue.
- **São Paulo (SP)** alone contributes about **38%** of revenue.
- **97%** of customers bought only once, so retention is the biggest growth opportunity.
- **Champions and At Risk (high spend)** customers are about **32%** of customers but **62%** of revenue.
- **14,362** high-spending customers have not purchased recently, so a win-back campaign aimed at them could have the biggest impact.

## Project Structure

[Lohitha Doppalapudi] | [https://www.linkedin.com/in/lohitha-doppalapudi/] | [doppalapudilohitha1@gmail.com]
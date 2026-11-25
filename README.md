# Sales & Profit Analysis Dashboard | Power BI, SQL & Excel

## Project Overview

This project focuses on analyzing sales performance, revenue, profitability, product categories, and customer segments using Microsoft Power BI, SQL (PostgreSQL), and Microsoft Excel.

The objective is to help business stakeholders understand sales trends, identify profitable products, evaluate regional performance, and make data-driven business decisions.

## Project Objectives

- Analyze overall sales and profit performance.
- Identify monthly and yearly sales trends.
- Compare revenue and profit across product categories.
- Identify top 10 products based on sales.
- Identify loss-making products.
- Analyze regional sales and profitability.
- Understand customer segment performance.
- Calculate profit margin and average order value.
- Compare current-year and previous-year sales performance.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data cleaning, formatting and Pivot Tables |
| PostgreSQL | SQL queries and business analysis |
| Power BI Desktop | Interactive dashboard and visualization |
| Power Query | Data transformation and cleaning |
| DAX | Business calculations and KPIs |
| GitHub | Project documentation and version control |

## Dataset Description

The project uses a synthetic retail sales dataset created for learning and portfolio development.

The dataset contains three tables:

### 1. Sales Table
- SalesLineID
- OrderID
- OrderDate
- CustomerID
- ProductID
- Quantity
- UnitPrice
- DiscountPct
- SalesAmount
- TotalCost
- ShippingCost
- Profit

### 2. Products Table
- ProductID
- ProductName
- Category
- UnitCost
- ListPrice

### 3. Customers Table
- CustomerID
- CustomerName
- Segment
- Region
- City

The dataset covers transactions from January 2023 to December 2025.

## Data Model

The Power BI data model follows a Star Schema.

- Sales: Fact Table
- Products: Dimension Table
- Customers: Dimension Table
- DateTable: Date Dimension Table

Relationships:
- Products[ProductID] → Sales[ProductID]
- Customers[CustomerID] → Sales[CustomerID]
- DateTable[Date] → Sales[OrderDate]

All relationships use one-to-many cardinality with single-direction filtering from dimensions to the Sales table.

## Key Performance Indicators (KPIs)

1. Total Sales
2. Total Profit
3. Total Cost
4. Total Shipping Cost
5. Profit Margin
6. Total Orders
7. Total Quantity Sold
8. Average Order Value
9. Sales Year-to-Date
10. Year-over-Year Sales Growth

## Dashboard Features

### Sales Performance
- Monthly sales trends
- Yearly sales comparison
- Total revenue analysis
- Average order value

### Profitability Analysis
- Total profit
- Profit margin
- Monthly profit trends
- Loss-making product identification

### Product Analysis
- Category-wise sales
- Category-wise profit
- Top 10 products by revenue

### Regional Analysis
- Region-wise sales
- Region-wise profit
- City-level performance

### Customer Analysis
- Sales by customer segment
- Consumer, Corporate and Small Business comparison

### Interactive Filters
- Order Date
- Region
- Product Category

## SQL Analysis

SQL queries were used to perform:
- Total sales and profit calculations.
- Monthly sales and profit analysis.
- Category-wise sales analysis.
- Top 10 product identification.
- Region-wise sales and profit analysis.
- Loss-making product identification.

## Business Questions Answered

1. What is the total revenue generated?
2. What is the total profit?
3. Which month generated the highest sales?
4. Which product category contributes the highest revenue?
5. Which products are generating losses?
6. Which region performs best in terms of profitability?
7. Which customer segment contributes the most revenue?
8. What is the average order value?
9. How has sales performance changed year over year?
10. Which products should management focus on?

## Key Business Insights

The dashboard is designed to help stakeholders:
- Understand revenue and profit trends.
- Identify high-performing product categories.
- Recognize regions with lower profitability.
- Identify products with negative profit.
- Understand customer segment contributions.
- Monitor business growth through KPIs.

Actual findings should be documented after analyzing the completed dashboard.

## Project Structure

```text
Sales-Profit-Analysis-PowerBI/
│
├── Dataset/
│   ├── Sales.csv
│   ├── Products.csv
│   └── Customers.csv
│
├── Dashboard/
│   ├── Sales_Profit_Dashboard.pbix
│   ├── Sales_Profit_Dashboard.png
│   └── Sales_Profit_Dashboard.pdf
│
├── SQL/
│   └── Sales_Profit_Analysis_SQL.sql
│
├── Documentation/
│   └── DAX_Measures.md
│
└── README.md
```

## Skills Demonstrated

- Data Cleaning and Transformation
- SQL Joins and Aggregations
- PostgreSQL
- Power BI Data Modeling
- DAX Calculations
- KPI Development
- Data Visualization
- Business Intelligence
- Analytical Problem Solving

## Dataset Disclaimer

This project uses synthetic data generated for educational and portfolio purposes. Customer names and transactions do not represent real customers or business transactions.

## Author

Data Analytics Portfolio Project

**Technologies:** Excel | SQL | PostgreSQL | Power BI | DAX | Power Query | GitHub

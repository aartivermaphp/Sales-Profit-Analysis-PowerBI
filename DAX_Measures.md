# DAX Measures – Sales & Profit Analysis Dashboard

## Project Overview

This document contains the DAX calculations used to develop the Sales & Profit Analysis Dashboard in Microsoft Power BI.

The measures help analyze revenue, profitability, order performance, sales growth, and business trends.

**Table Name:** Sales

**Date Table:** DateTable

---

## 1. Total Sales

```dax
Total Sales =
SUM(Sales[SalesAmount])
```

**Purpose:** Calculates total revenue generated from sales transactions after discounts.

## 2. Total Profit

```dax
Total Profit =
SUM(Sales[Profit])
```

**Purpose:** Calculates the total profit generated after deducting product costs and shipping expenses.

## 3. Total Cost

```dax
Total Cost =
SUM(Sales[TotalCost])
```

**Purpose:** Calculates the total product cost associated with sales transactions.

## 4. Total Shipping Cost

```dax
Total Shipping =
SUM(Sales[ShippingCost])
```

**Purpose:** Calculates the total shipping expenses.

## 5. Profit Margin

```dax
Profit Margin =
DIVIDE(
    [Total Profit],
    [Total Sales],
    0
)
```

**Purpose:** Calculates the percentage of revenue retained as profit.

**Format:** Percentage (%)

Formula:

Profit Margin = (Total Profit / Total Sales) × 100

## 6. Total Orders

```dax
Total Orders =
DISTINCTCOUNT(Sales[OrderID])
```

**Purpose:** Calculates the total number of unique orders.

**Why DISTINCTCOUNT?**

An order may contain multiple products and therefore multiple sales-line records. DISTINCTCOUNT ensures each order is counted only once.

## 7. Total Quantity Sold

```dax
Total Quantity =
SUM(Sales[Quantity])
```

**Purpose:** Calculates the total number of product units sold.

## 8. Average Order Value (AOV)

```dax
Average Order Value =
DIVIDE(
    [Total Sales],
    [Total Orders],
    0
)
```

**Purpose:** Calculates the average revenue generated per unique order.

Formula:

AOV = Total Sales / Total Orders

## 9. Sales Year-to-Date (YTD)

```dax
Sales YTD =
TOTALYTD(
    [Total Sales],
    DateTable[Date]
)
```

**Purpose:** Calculates cumulative sales from the beginning of the year up to the selected date.

**Business Use:** Helps monitor sales performance throughout the year.

## 10. Sales Previous Year

```dax
Sales Previous Year =
CALCULATE(
    [Total Sales],
    SAMEPERIODLASTYEAR(DateTable[Date])
)
```

**Purpose:** Calculates sales for the equivalent period in the previous year.

**Business Use:** Used for year-over-year sales comparisons.

## 11. Year-over-Year (YoY) Growth %

```dax
YoY Growth % =
DIVIDE(
    [Total Sales] - [Sales Previous Year],
    [Sales Previous Year],
    0
)
```

**Purpose:** Calculates the percentage increase or decrease in sales compared with the previous year.

**Format:** Percentage (%)

Formula:

YoY Growth = ((Current Sales - Previous Year Sales) / Previous Year Sales) × 100

## 12. Profit Status

```dax
Profit Status =
IF(
    [Total Profit] >= 0,
    "Profitable",
    "Loss"
)
```

**Purpose:** Categorizes the current profit result as profitable or loss-making.

**Note:** This is a measure and its result changes according to the current filter context. For product-level profit status, use it in a visual grouped by product.

---

## Additional Useful Measures

### 13. Sales Previous Month

```dax
Sales Previous Month =
CALCULATE(
    [Total Sales],
    DATEADD(
        DateTable[Date],
        -1,
        MONTH
    )
)
```

**Purpose:** Calculates sales for the previous month.

### 14. Month-over-Month (MoM) Growth %

```dax
MoM Growth % =
DIVIDE(
    [Total Sales] - [Sales Previous Month],
    [Sales Previous Month],
    0
)
```

**Purpose:** Calculates monthly sales growth compared with the previous month.

**Format:** Percentage (%)

### 15. Total Customers

```dax
Total Customers =
DISTINCTCOUNT(Sales[CustomerID])
```

**Purpose:** Calculates the number of unique customers who placed orders in the selected period.

### 16. Average Selling Price

```dax
Average Selling Price =
DIVIDE(
    [Total Sales],
    [Total Quantity],
    0
)
```

**Purpose:** Calculates average revenue per unit sold.

---

## DAX Concepts Used

| DAX Function | Purpose |
|---|---|
| SUM() | Adds numeric values |
| DIVIDE() | Performs safe division |
| DISTINCTCOUNT() | Counts unique values |
| CALCULATE() | Evaluates an expression under modified filter context |
| TOTALYTD() | Calculates year-to-date values |
| SAMEPERIODLASTYEAR() | Returns the corresponding previous-year period |
| DATEADD() | Shifts dates by a specified interval |
| IF() | Applies conditional logic |

## Important Notes

1. Create these calculations using Modeling → New Measure.
2. Format Profit Margin, YoY Growth and MoM Growth as percentages.
3. Format sales, profit, cost and AOV as currency.
4. Ensure DateTable is marked as a date table.
5. Ensure DateTable[Date] has an active relationship with Sales[OrderDate].
6. Use DISTINCTCOUNT(OrderID) because an order may contain multiple product lines.
7. Compare Power BI totals with SQL query results to validate calculations.

## Project Skills Demonstrated

- DAX Measures
- Time Intelligence
- KPI Calculations
- Filter Context
- Sales Performance Analysis
- Profitability Analysis
- Business Reporting
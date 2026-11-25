


/* Query 1: Total Sales, Profit & Profit Margin */
SELECT SUM(salesamount) AS total_sales,
       SUM(totalcost) AS total_cost,
	   SUM(shippingcost) AS total_shipping,
	   SUM(profit) AS total_profit,
	   ROUND(
          SUM(profit)/ NULLIF(SUM(salesamount),0) * 100, 2
	   ) AS profit_margin
FROM sales;


/* Query 2: Monthly Sales and Profit */
select * from sales;
SELECT 
    DATE_TRUNC('month', orderdate)::DATE AS month,
	SUM(salesamount) AS monthly_sales,
	SUM(profit) AS monthly_profit
FROM sales
GROUP BY 1
ORDER BY 1;


/* Query 3: Sales by Category */
SELECT
     p.category,
	 SUM(s.salesamount) AS total_sales,
	 SUM(s.profit) AS total_profit
FROM sales s JOIN products p
ON s.productid=p.productid
GROUP BY p.category ORDER BY total_sales DESC;


/* Query 4: Top 10 Products by Revenue */
SELECT
      p.productname,
	  SUM(s.salesamount) AS total_sales,
	  SUM(s.profit) AS total_profit
FROM products p JOIN sales s
ON p.productid=s.productid
GROUP BY p.productname
ORDER BY total_sales DESC LIMIT 10;


/* Query 5: Region-wise Sales and Profit */
SELECT c.region,
       SUM(s.salesamount) AS total_sales,
	   SUM(s.profit) AS total_profit
FROM customers c JOIN sales s
ON c.customerid=s.customerid
GROUP BY c.region
ORDER BY total_sales DESC;


/* Query 6: Identify Loss-Making Products */
SELECT p.productname,
       SUM(s.salesamount) AS total_sales,
	   SUM(s.profit) AS total_profit
FROM sales s JOIN products p
ON s.productid=p.productid
GROUP BY p.productname
HAVING SUM(s.profit) < 0
ORDER BY total_profit ASC;
-- Query 1: Total Sales by Region
SELECT Region, 
       SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Query 2: Top 5 Profitable Categories
SELECT Category, 
       SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Profit DESC
LIMIT 5;

-- Query 3: Monthly Sales Trend
SELECT CASE 
    WHEN instr(order_date, '/') = 2 
    THEN '0' || substr(order_date, 1, 1)
    ELSE substr(order_date, 1, 2)
END AS Month,
SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Month;

-- Query 4: Discount Impact on Profit
SELECT Discount, 
       AVG(Profit) AS Avg_Profit
FROM sales
GROUP BY Discount
ORDER BY Discount;
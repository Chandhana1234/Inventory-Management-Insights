use mahendra;
show tables;
select * from f_sales limit 5;
describe f_sales;
describe customer;
describe d_store;
describe f_inventory_adjusted;


SELECT COUNT(*) AS Total_Customers
FROM customer;

SELECT `Cust Region`,
       COUNT(*) AS Total_Customers
FROM customer
GROUP BY `Cust Region`
ORDER BY Total_Customers DESC;

SELECT `Cust Gender`,
       COUNT(*) AS Total_Customers
FROM customer
GROUP BY `Cust Gender`;

SELECT `Store Region`,
       COUNT(*) AS Total_Stores
FROM d_store
GROUP BY `Store Region`
ORDER BY Total_Stores DESC;


SELECT `Online Ordering`,
       COUNT(*) AS Number_of_Stores
FROM d_store
GROUP BY `Online Ordering`;

SELECT `Store Region`,
       ROUND(AVG(`Number of Employees`),2) AS Avg_Employees
FROM d_store
GROUP BY `Store Region`
ORDER BY Avg_Employees DESC;


SELECT `Product Name`,
       `Product Family`,
       (`Quantity on Hand` * `Cost Amount`) AS Inventory_Value
FROM f_inventory_adjusted
ORDER BY Inventory_Value DESC
LIMIT 10;

SELECT `Product Family`,
       ROUND(SUM(`Quantity on Hand` * `Cost Amount`),2) AS Total_Inventory_Value
FROM f_inventory_adjusted
GROUP BY `Product Family`
ORDER BY Total_Inventory_Value DESC;


SELECT `Purchase Method`,
       COUNT(`Order Number`) AS Total_Orders
FROM f_sales
GROUP BY `Purchase Method`
ORDER BY Total_Orders DESC;


SELECT `Transaction Type`,
       COUNT(`Order Number`) AS Total_Orders
FROM f_sales
GROUP BY `Transaction Type`
ORDER BY Total_Orders DESC;

SELECT c.`Cust Region`,
       COUNT(f.`Order Number`) AS Total_Orders
FROM f_sales f
JOIN customer c
ON f.`Cust Key` = c.`Cust Key`
GROUP BY c.`Cust Region`
ORDER BY Total_Orders DESC;
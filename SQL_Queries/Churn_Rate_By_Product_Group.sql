SELECT
    CONCAT(Num_Of_Products, ' Product') AS Product_Group,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*),2) AS Churn_Rate
FROM customer_churn
GROUP BY Num_Of_Products
ORDER BY Num_Of_Products;
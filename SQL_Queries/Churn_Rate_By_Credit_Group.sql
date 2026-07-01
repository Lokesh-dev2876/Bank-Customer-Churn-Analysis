SELECT
    CASE
        WHEN Credit_Score < 500 THEN 'Poor'
        WHEN Credit_Score BETWEEN 500 AND 700 THEN 'Average'
        ELSE 'Good'
    END AS Credit_Group,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*),2) AS Churn_Rate
FROM customer_churn
GROUP BY Credit_Group
ORDER BY Churn_Rate DESC;
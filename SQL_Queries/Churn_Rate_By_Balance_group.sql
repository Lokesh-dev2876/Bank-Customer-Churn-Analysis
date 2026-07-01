SELECT
    CASE
        WHEN Balance = 0 THEN 'Zero Balance'
        WHEN Balance < 50000 THEN 'Low'
        WHEN Balance BETWEEN 50000 AND 100000 THEN 'Medium'
        ELSE 'High'
    END AS Balance_Group,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(
        SUM(Exited) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM customer_churn
GROUP BY
    CASE
        WHEN Balance = 0 THEN 'Zero Balance'
        WHEN Balance < 50000 THEN 'Low'
        WHEN Balance BETWEEN 50000 AND 100000 THEN 'Medium'
        ELSE 'High'
    END
ORDER BY Churn_Rate DESC;
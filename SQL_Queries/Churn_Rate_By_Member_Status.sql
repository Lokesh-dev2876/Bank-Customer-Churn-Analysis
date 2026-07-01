SELECT
    CASE
        WHEN Is_Active_Member = 1 THEN 'Active'
        ELSE 'Inactive'
    END AS Member_Status,
    COUNT(*) AS Total_Customers,
    SUM(Exited) AS Churned_Customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*),2) AS Churn_Rate
FROM customer_churn
GROUP BY Member_Status
ORDER BY Churn_Rate DESC;
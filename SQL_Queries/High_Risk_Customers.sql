SELECT *
FROM customer_churn
WHERE Age > 40
  AND Geography = 'Germany'
  AND Is_Active_Member = 0
  AND Complain = 1;
SELECT Signups.user_id, IFNULL(ROUND(SUM(Confirmations.action = 'confirmed') / COUNT(Confirmations.action), 2), 0) AS confirmation_rate
FROM Signups
LEFT JOIN Confirmations
ON Confirmations.user_id = Signups.user_id
GROUP BY user_id

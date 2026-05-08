SELECT
    day.visited_on,
    SUM(c.amount) AS amount,
    ROUND(SUM(c.amount) / 7, 2) AS average_amount
FROM (SELECT DISTINCT visited_on FROM Customer) AS day
INNER JOIN Customer AS c
    ON c.visited_on BETWEEN DATE_SUB(day.visited_on, INTERVAL 6 DAY) AND day.visited_on
GROUP BY day.visited_on
HAVING COUNT(DISTINCT c.visited_on) = 7
ORDER BY day.visited_on ASC;

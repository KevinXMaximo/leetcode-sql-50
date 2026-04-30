SELECT DISTINCT a.num AS ConsecutiveNums
FROM Logs a
INNER JOIN Logs b ON b.id = a.id + 1
INNER JOIN Logs c ON c.id = a.id + 2
WHERE a.num = b.num AND b.num = c.num

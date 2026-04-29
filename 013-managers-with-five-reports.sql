SELECT Manager.name
FROM Employee AS Manager
INNER JOIN Employee AS Report ON Report.managerID = Manager.Id
GROUP BY Manager.id
HAVING COUNT(Report.managerID) >= 5

# Write your MySQL query statement below
SELECT Manager.employee_id, Manager.name, COUNT(*) AS reports_count, ROUND(AVG(Report.age)) AS average_age
FROM Employees as Report
INNER JOIN Employees as Manager
ON Report.reports_to = Manager.employee_id
GROUP BY Manager.employee_id, Manager.name
ORDER BY Manager.employee_id ASC

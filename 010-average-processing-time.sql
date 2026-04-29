SELECT start.machine_ID, ROUND(AVG(end.timestamp - start.timestamp), 3) AS processing_time
FROM Activity AS start
INNER JOIN Activity AS end
ON start.machine_ID = end.machine_ID
AND start.process_id = end.process_id
WHERE start.activity_type = 'start' AND end.activity_type = 'end'
GROUP BY machine_id

# Write your MySQL query statement below
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE (activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27')  AND (activity_type = 'open_session' OR activity_type = 'end_session' OR activity_type = 'scroll_down' OR activity_type = 'send_message')
GROUP BY activity_date

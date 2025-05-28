
-- Count sessions scheduled between 10 AM and 12 PM per event
SELECT e.title, COUNT(*) AS session_count
FROM Sessions s
JOIN Events e ON s.event_id = e.event_id
WHERE TIME(s.start_time) BETWEEN '10:00:00' AND '11:59:59'
GROUP BY e.event_id;


-- Events with max sessions
SELECT e.title, COUNT(s.session_id) AS session_count
FROM Events e
JOIN Sessions s ON e.event_id = s.event_id
GROUP BY e.event_id
HAVING session_count = (
  SELECT MAX(cnt) FROM (
    SELECT COUNT(*) AS cnt FROM Sessions GROUP BY event_id
  ) AS counts
);

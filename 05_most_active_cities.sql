
-- Top 5 cities with highest distinct user registrations
SELECT u.city, COUNT(DISTINCT r.user_id) AS total_users
FROM Users u
JOIN Registrations r ON u.user_id = r.user_id
GROUP BY u.city
ORDER BY total_users DESC
LIMIT 5;

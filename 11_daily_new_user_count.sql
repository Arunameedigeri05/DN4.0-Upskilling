
-- New user count per day (last 7 days)
SELECT registration_date, COUNT(*) AS new_users
FROM Users
WHERE registration_date >= CURRENT_DATE - INTERVAL 7 DAY
GROUP BY registration_date;

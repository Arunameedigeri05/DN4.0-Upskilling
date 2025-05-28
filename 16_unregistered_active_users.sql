
-- Users registered in last 30 days but not registered for any event
SELECT *
FROM Users u
WHERE registration_date >= CURRENT_DATE - INTERVAL 30 DAY
AND NOT EXISTS (
  SELECT 1 FROM Registrations r WHERE r.user_id = u.user_id
);

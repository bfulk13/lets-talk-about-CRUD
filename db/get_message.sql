SELECT m.id, m.user_id, m.message, u.name, u.password
FROM messages m
JOIN users u
ON m.user_id = u.id
WHERE m.id = $1
ORDER BY m.id ASC
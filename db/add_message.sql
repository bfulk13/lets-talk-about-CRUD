INSERT INTO messages
(user_id, message)
VALUES ($1, $2);

SELECT m.id, m.user_id, m.message, u.name
FROM messages m
JOIN users u
ON m.user_id = u.id
ORDER BY m.id ASC
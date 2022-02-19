-- name: CreateTrainer :one
INSERT INTO trainers(name)
VALUES ($1)
RETURNING *;

-- name: GetTrainer :one
SELECT * FROM trainers
WHERE id = $1
LIMIT 1;
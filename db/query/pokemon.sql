-- name: CreatePokemon :one
INSERT INTO pokemons(species, nickname, trainer_id)
VALUES ($1, $2, $3)
RETURNING *;

-- name: ListPokemons :many
SELECT * FROM pokemons
WHERE trainer_id = $1
ORDER BY created_at ASC;

-- name: DeletePokemon :exec
DELETE FROM pokemons
WHERE id = $1;
// Code generated by sqlc. DO NOT EDIT.

package db

import (
	"context"
)

type Querier interface {
	CreatePokemon(ctx context.Context, arg CreatePokemonParams) (Pokemon, error)
	CreateTrainer(ctx context.Context, name string) (Trainer, error)
	DeletePokemon(ctx context.Context, id int32) error
	GetTrainer(ctx context.Context, id int32) (Trainer, error)
	ListPokemons(ctx context.Context, trainerID int32) ([]Pokemon, error)
}

var _ Querier = (*Queries)(nil)

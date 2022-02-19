CREATE TABLE "trainers" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "pokemons" (
  "id" serial PRIMARY KEY,
  "trainer_id" serial NOT NULL,
  "species" varchar NOT NULL,
  "nickname" varchar NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

ALTER TABLE "pokemons" ADD FOREIGN KEY ("trainer_id") REFERENCES "trainers" ("id");

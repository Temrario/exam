CREATE TABLE IF NOT EXISTS example (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO example (name) VALUES ('Initial entry');
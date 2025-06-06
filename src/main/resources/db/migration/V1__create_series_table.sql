-- Version: 1
-- Create the series table
CREATE TABLE series (
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

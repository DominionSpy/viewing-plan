-- Version: 4
-- Tags are standalone and can be reused across episodes
CREATE TABLE tag (
     id   SERIAL PRIMARY KEY,
     name VARCHAR(255) NOT NULL UNIQUE
);

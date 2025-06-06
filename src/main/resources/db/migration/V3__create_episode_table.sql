-- Version: 3
-- Each episode belongs to a season
CREATE TABLE episode (
     id        SERIAL PRIMARY KEY,
     season_id INTEGER NOT NULL
         REFERENCES season(id)
             ON DELETE CASCADE,
     number    INTEGER NOT NULL,
     title     VARCHAR(255) NOT NULL,
     UNIQUE (season_id, number)
);

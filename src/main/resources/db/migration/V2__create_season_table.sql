-- Version: 2
-- Each season belongs to a series
CREATE TABLE season (
    id        SERIAL PRIMARY KEY,
    series_id INTEGER NOT NULL
        REFERENCES series(id)
            ON DELETE CASCADE,
    name      VARCHAR(255) NOT NULL,
    UNIQUE (series_id, name)
);
